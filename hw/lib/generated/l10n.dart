// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class Batch16String {
  Batch16String();

  static Batch16String? _current;

  static Batch16String get current {
    assert(_current != null,
        'No instance of Batch16String was loaded. Try to initialize the Batch16String delegate before accessing Batch16String.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Batch16String> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Batch16String();
      Batch16String._current = instance;

      return instance;
    });
  }

  static Batch16String of(BuildContext context) {
    final instance = Batch16String.maybeOf(context);
    assert(instance != null,
        'No instance of Batch16String present in the widget tree. Did you add Batch16String.delegate in localizationsDelegates?');
    return instance!;
  }

  static Batch16String? maybeOf(BuildContext context) {
    return Localizations.of<Batch16String>(context, Batch16String);
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `{platform} sign up is not supported`
  String notSupported(Object platform) {
    return Intl.message(
      '$platform sign up is not supported',
      name: 'notSupported',
      desc: '',
      args: [platform],
    );
  }

  /// `Log in`
  String get login {
    return Intl.message(
      'Log in',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Singup`
  String get signup {
    return Intl.message(
      'Singup',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations!`
  String get congrate {
    return Intl.message(
      'Congratulations!',
      name: 'congrate',
      desc: '',
      args: [],
    );
  }

  /// `Please wait a little longer...`
  String get wait {
    return Intl.message(
      'Please wait a little longer...',
      name: 'wait',
      desc: '',
      args: [],
    );
  }

  /// `Already have account?`
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have account?',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],

    );
  }

  /// `{field} must not be empty`
  String notEmpty(Object field) {
    return Intl.message(
      '$field must not be empty',
      name: 'notEmpty',
      desc: '',
      args: [field],
    );
  }

  /// `Invalid {field} format`
  String invalid(Object field) {
    return Intl.message(
      'Invalid $field format',
      name: 'invalid',
      desc: '',
      args: [field],
    );
  }

  /// `{field} is too weak`
  String tooWeak(Object field) {
    return Intl.message(
      '$field is too weak',
      name: 'tooWeak',
      desc: '',
      args: [field],
    );
  }

  /// `Hello {name}`
  String subString(Object name) {
    return Intl.message(
      'Hello $name',
      name: 'subString',
      desc: '',
      args: [name],
    );
  }

  /// `{count,  plural, zero {Plural count is 0} one {This is string for plural count = 1} other{Count is {count}}}`
  String pluralCount(num count) {
    return Intl.plural(
      count,
      zero: 'Plural count is 0',
      one: 'This is string for plural count = 1',
      other: 'Count is $count',
      name: 'pluralCount',
      desc: '',
      args: [count],
    );
  }

  /// `{sex, select, male {His Birthday} female {Her birthday} other {Their Birthday}}`
  String pageHomeBirthday(String sex) {
    return Intl.gender(
      sex,
      male: 'His Birthday',
      female: 'Her birthday',
      other: 'Their Birthday',
      name: 'pageHomeBirthday',
      desc: '',
      args: [sex],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Batch16String> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Batch16String> load(Locale locale) => Batch16String.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
