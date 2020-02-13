import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_brace_in_string_interps

//WARNING: This file is automatically generated. DO NOT EDIT, all your changes would be lost.

typedef LocaleChangeCallback = void Function(Locale locale);

class I18n implements WidgetsLocalizations {
  const I18n();
  static Locale _locale;
  static bool _shouldReload = false;

  static set locale(Locale newLocale) {
    _shouldReload = true;
    I18n._locale = newLocale;
  }

  static const GeneratedLocalizationsDelegate delegate = GeneratedLocalizationsDelegate();

  /// function to be invoked when changing the language
  static LocaleChangeCallback onLocaleChanged;

  static I18n of(BuildContext context) =>
    Localizations.of<I18n>(context, WidgetsLocalizations);

  @override
  TextDirection get textDirection => TextDirection.ltr;

  /// "Szivacs Napló"
  String get appTitle => "Szivacs Napló";
  /// "verzió"
  String get appVersion => "verzió";
  /// "főoldal"
  String get drawerHome => "főoldal";
  /// "jegyek"
  String get drawerEvaluations => "jegyek";
  /// "órarend"
  String get drawerTimetable => "órarend";
  /// "házi feladatok"
  String get drawerHomeworks => "házi feladatok";
  /// "feljegyzések"
  String get drawerNotes => "feljegyzések";
  /// "üzenetek"
  String get drawerMessages => "üzenetek";
  /// "számonkérések"
  String get drawerTests => "számonkérések";
  /// "mulasztások"
  String get drawerAbsences => "mulasztások";
  /// "beállítások"
  String get drawerSettings => "beállítások";
  /// "ok"
  String get dialogOk => "ok";
  /// "igen"
  String get dialogYes => "igen";
  /// "nem"
  String get dialogNo => "nem";
  /// "kész"
  String get dialogDone => "kész";
  /// "idő"
  String get time => "idő";
  /// "óra"
  String get timeHour => "óra";
  /// "perc"
  String get timeMinute => "perc";
  /// "timeLater"
  String get timeLater => "timeLater";
  /// "dátum"
  String get date => "dátum";
  /// "holnap"
  String get dateTomorrow => "holnap";
  /// "hétfő"
  String get dateMonday => "hétfő";
  /// "kedd"
  String get dateTuesday => "kedd";
  /// "szerda"
  String get dateWednesday => "szerda";
  /// "csütörtök"
  String get dateThursday => "csütörtök";
  /// "péntek"
  String get dateFriday => "péntek";
  /// "szombat"
  String get dateSaturday => "szombat";
  /// "vasárnap"
  String get dateSunday => "vasárnap";
  /// "h"
  String get dateMondayShort => "h";
  /// "k"
  String get dateTuesdayShort => "k";
  /// "sz"
  String get dateWednesdayShort => "sz";
  /// "cs"
  String get dateThursdayShort => "cs";
  /// "p"
  String get dateFridayShort => "p";
  /// "sz"
  String get dateSaturdayShort => "sz";
  /// "v"
  String get dateSundayShort => "v";
  /// "nap"
  String get dateDay => "nap";
  /// "hét"
  String get dateWeek => "hét";
  /// "hónap"
  String get dateMonth => "hónap";
  /// "két hónap"
  String get dateMonth2 => "két hónap";
  /// "előző hét"
  String get dateWeekPrev => "előző hét";
  /// "következö hét"
  String get dateWeekNext => "következö hét";
  /// "delayMins"
  String get delayMins => "delayMins";
  /// "Összes késés: ${count} perc"
  String delayAll(String count) => "Összes késés: ${count} perc";
  /// "administrationTime"
  String get administrationTime => "administrationTime";
  /// "justificationState"
  String get justificationState => "justificationState";
  /// "justificationMode"
  String get justificationMode => "justificationMode";
  /// "óra"
  String get lesson => "óra";
  /// "${count} óra"
  String lessonCount(String count) => "${count} óra";
  /// "következő óra"
  String get lessonNext => "következő óra";
  /// "óra lesz"
  String get lessonHave => "óra lesz";
  /// "terem"
  String get lessonRoom => "terem";
  /// "tanár"
  String get lessonTeacher => "tanár";
  /// "osztály"
  String get lessonClass => "osztály";
  /// "óra kezdete"
  String get lessonStart => "óra kezdete";
  /// "óra vége"
  String get lessonEnd => "óra vége";
  /// "téma"
  String get lessonTheme => "téma";
  /// "házi feladat"
  String get homework => "házi feladat";
  /// "helyettesítés"
  String get substitution => "helyettesítés";
  /// "elmarad"
  String get substitutionMissed => "elmarad";
  /// "state (?)"
  String get state => "state (?)";
  /// "faliújság"
  String get note2 => "faliújság";
  /// "feljegyzés"
  String get note => "feljegyzés";
  /// "receivers"
  String get messageReceivers => "receivers";
  /// "statisztikák"
  String get statistics => "statisztikák";
  /// "absenceTime"
  String get absenceTime => "absenceTime";
  /// "Összes hiányzás: ${count} óra"
  String absenceAll(String count) => "Összes hiányzás: ${count} óra";
  /// "Szülői igazolás: ${count} db"
  String absenceParental(String count) => "Szülői igazolás: ${count} db";
  /// "órarend"
  String get timetable => "órarend";
  /// "üres órarend"
  String get timetableEmpty => "üres órarend";
  /// "Rendezés"
  String get sort => "Rendezés";
  /// "beírás ideje"
  String get sortTime => "beírás ideje";
  /// "jegy"
  String get sortEval => "jegy";
  /// "számonkérés ideje"
  String get sortTimeReal => "számonkérés ideje";
}

class _I18n_hu_HU extends I18n {
  const _I18n_hu_HU();

  @override
  TextDirection get textDirection => TextDirection.ltr;
}

class GeneratedLocalizationsDelegate extends LocalizationsDelegate<WidgetsLocalizations> {
  const GeneratedLocalizationsDelegate();
  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale("hu", "HU")
    ];
  }

  LocaleResolutionCallback resolution({Locale fallback}) {
    return (Locale locale, Iterable<Locale> supported) {
      if (isSupported(locale)) {
        return locale;
      }
      final Locale fallbackLocale = fallback ?? supported.first;
      return fallbackLocale;
    };
  }

  @override
  Future<WidgetsLocalizations> load(Locale locale) {
    I18n._locale ??= locale;
    I18n._shouldReload = false;
    final String lang = I18n._locale != null ? I18n._locale.toString() : "";
    final String languageCode = I18n._locale != null ? I18n._locale.languageCode : "";
    if ("hu_HU" == lang) {
      return SynchronousFuture<WidgetsLocalizations>(const _I18n_hu_HU());
    }
    else if ("hu" == languageCode) {
      return SynchronousFuture<WidgetsLocalizations>(const _I18n_hu_HU());
    }

    return SynchronousFuture<WidgetsLocalizations>(const I18n());
  }

  @override
  bool isSupported(Locale locale) {
    for (var i = 0; i < supportedLocales.length && locale != null; i++) {
      final l = supportedLocales[i];
      if (l.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }

  @override
  bool shouldReload(GeneratedLocalizationsDelegate old) => I18n._shouldReload;
}