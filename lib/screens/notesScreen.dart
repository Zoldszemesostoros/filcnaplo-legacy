import 'dart:async';

import 'package:filcnaplo/generated/i18n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

import 'package:filcnaplo/Datas/Note.dart';
import 'package:filcnaplo/GlobalDrawer.dart';
import 'package:filcnaplo/Utils/StringFormatter.dart';
import 'package:filcnaplo/globals.dart' as globals;

void main() {
  runApp(MaterialApp(home: NotesScreen()));
}

class NotesScreen extends StatefulWidget {
  @override
  NotesScreenState createState() => NotesScreenState();
}

class NotesScreenState extends State<NotesScreen> {
  @override
  void initState() {
    super.initState();
    _onRefreshOffline();
    _onRefresh(showErrors: false);
  }

  bool hasOfflineLoaded = false;
  bool hasLoaded = true;

  List<Note> notes = List();

  @override
  Widget build(BuildContext context) {
    globals.context = context;
    return WillPopScope(
        onWillPop: () {
          globals.screen = 0;
          Navigator.pushReplacementNamed(context, "/main");
        },
        child: Scaffold(
            drawer: GDrawer(),
            appBar: AppBar(
              title: Text(capitalize(I18n.of(context).noteTitle)),
              actions: <Widget>[],
            ),
            body: Container(
                child: hasOfflineLoaded
                    ? Column(children: <Widget>[
                        !hasLoaded
                            ? Container(
                                child: LinearProgressIndicator(
                                  value: null,
                                ),
                                height: 3,
                              )
                            : Container(
                                height: 3,
                              ),
                        Expanded(
                          child: RefreshIndicator(
                            child: ListView.builder(
                              itemBuilder: _itemBuilder,
                              itemCount: notes.length,
                            ),
                            onRefresh: _onRefresh,
                          ),
                        ),
                      ])
                    : Center(child: CircularProgressIndicator()))));
  }

  Future<Null> _onRefresh({bool showErrors = true}) async {
    setState(() {
      hasLoaded = false;
    });
    Completer<Null> completer = Completer<Null>();

    await globals.selectedAccount.refreshStudentString(false, showErrors);
    notes = globals.selectedAccount.notes;

    hasLoaded = true;
    if (mounted)
      setState(() {
        completer.complete();
      });
    return completer.future;
  }

  Future<Null> _onRefreshOffline() async {
    setState(() {
      hasOfflineLoaded = false;
    });
    Completer<Null> completer = Completer<Null>();

    globals.selectedAccount.refreshStudentString(true, false);
    notes = globals.selectedAccount.notes;

    hasOfflineLoaded = true;
    if (mounted)
      setState(() {
        completer.complete();
      });
    return completer.future;
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return Column(
      children: <Widget>[
        ListTile(
          title: notes[index].title != null && notes[index].title != ""
              ? Text(
                  notes[index].title,
                  style: TextStyle(fontSize: 22),
                )
              : null,
          subtitle: Column(children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              child: Linkify(
                style: TextStyle(fontSize: 16),
                text: notes[index].content,
                onOpen: (String url) {
                  launcher.launch(url);
                },
              ),
            ),
            Container(
              child: Text(dateToHuman(notes[index].date) +
                  dateToWeekDay(notes[index].date, context)),
              alignment: Alignment(1, -1),
            ),
            notes[index].teacher != null
                ? Container(
                    child: Text(notes[index].teacher),
                    alignment: Alignment(1, -1),
                  )
                : Container(),
          ]),
          isThreeLine: true,
        ),
        Divider(
          height: 10.0,
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
