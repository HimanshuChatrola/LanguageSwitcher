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
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null, 'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;
 
      return instance;
    });
  } 

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null, 'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Language Buttons`
  String get languageButtonText {
    return Intl.message(
      'Language Buttons',
      name: 'languageButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Hello World`
  String get helloWorldText {
    return Intl.message(
      'Hello World',
      name: 'helloWorldText',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get englishText {
    return Intl.message(
      'English',
      name: 'englishText',
      desc: '',
      args: [],
    );
  }

  /// `Gujarati`
  String get gujaratiText {
    return Intl.message(
      'Gujarati',
      name: 'gujaratiText',
      desc: '',
      args: [],
    );
  }

  /// `Sample Form Page`
  String get sampleFormPageText {
    return Intl.message(
      'Sample Form Page',
      name: 'sampleFormPageText',
      desc: '',
      args: [],
    );
  }

  /// `Surname`
  String get surnameText {
    return Intl.message(
      'Surname',
      name: 'surnameText',
      desc: '',
      args: [],
    );
  }

  /// `YourName`
  String get yourNameText {
    return Intl.message(
      'YourName',
      name: 'yourNameText',
      desc: '',
      args: [],
    );
  }

  /// `Father's Name`
  String get fatherNameText {
    return Intl.message(
      'Father\'s Name',
      name: 'fatherNameText',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Number`
  String get mobileNumberText {
    return Intl.message(
      'Mobile Number',
      name: 'mobileNumberText',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submitText {
    return Intl.message(
      'Submit',
      name: 'submitText',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'gu'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
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