import 'package:flutter/widgets.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  // Helper method
  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  // Supported locales
  static const List<Locale> supportedLocales = [
    Locale('en'),
    Locale('am'),
    Locale('om'),
    Locale('so'),
    Locale('ti'),
  ];

  // Localized values
  static final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'welcome': 'Welcome',
      'login': 'Login',
      'signup': 'Sign Up',
      'rideNow': 'Ride Now',
      'accountSetup': 'Account Setup',
      'profile': 'Profile',
      'car': 'Car',
      'documents': 'Documents',
      'next': 'Next',
      'back': 'Back',
      'finish': 'Finish',
      'setupCompleted': 'Account setup completed!',
    },
    'am': {
      'welcome': 'እንኳን ደህና መጡ',
      'login': 'ግባ',
      'signup': 'ይመዝገቡ',
      'rideNow': 'አሁን ጉዞ ይሂዱ',
      'accountSetup': 'የመለያ ማዘጋጃ ገጽ',
      'profile': 'መገለጫ',
      'car': 'መኪና',
      'documents': 'ሰነዶች',
      'next': 'ቀጣይ',
      'back': 'ተመለስ',
      'finish': 'አስቀምጥ',
      'setupCompleted': 'የመለያ ማዘጋጃ ተጠናቀቀ!',
    },
    'om': {
      'welcome': 'Baga nagaan dhuftan',
      'login': 'Seeni',
      'signup': 'Galmaa\'i',
      'rideNow': 'Amma imali',
      'accountSetup': 'Hojii Herrega',
      'profile': 'Piroofil',
      'car': 'Kaar',
      'documents': 'Galmee',
      'next': 'Itti aanu',
      'back': 'Dacha',
      'finish': 'Xumuri',
      'setupCompleted': 'Hojii herrega xumurame!',
    },
    'so': {
      'welcome': 'Ku soo dhawoow',
      'login': 'Gali',
      'signup': 'Isdiiwaangeli',
      'rideNow': 'Soo raac hadda',
      'accountSetup': 'Dejinta Akoonka',
      'profile': 'Profile',
      'car': 'Gaari',
      'documents': 'Dukumiintiyo',
      'next': 'Xiga',
      'back': 'Dib u noqo',
      'finish': 'Dhame',
      'setupCompleted': 'Dejinta akoonku waa dhammaatay!',
    },
    'ti': {
      'welcome': 'እንቋዕ ደሓን መጹ',
      'login': 'ግባ',
      'signup': 'ይመዝገቡ',
      'rideNow': 'ኣሁን ጉዞ ይሂዱ',
      'accountSetup': 'መዝገብ ማዕቀብ',
      'profile': 'መገለጫ',
      'car': 'መኪና',
      'documents': 'ሰነዶች',
      'next': 'ቀጺሉ',
      'back': 'ተመለስ',
      'finish': 'ጨርስ',
      'setupCompleted': 'መዝገብ ማዕቀብ ተጠናቀቀ!',
    },
  };

  // Getters for all keys
  String get welcome => _localizedValues[locale.languageCode]!['welcome']!;
  String get login => _localizedValues[locale.languageCode]!['login']!;
  String get signup => _localizedValues[locale.languageCode]!['signup']!;
  String get rideNow => _localizedValues[locale.languageCode]!['rideNow']!;
  String get accountSetup =>
      _localizedValues[locale.languageCode]!['accountSetup']!;
  String get profile => _localizedValues[locale.languageCode]!['profile']!;
  String get car => _localizedValues[locale.languageCode]!['car']!;
  String get documents => _localizedValues[locale.languageCode]!['documents']!;
  String get next => _localizedValues[locale.languageCode]!['next']!;
  String get back => _localizedValues[locale.languageCode]!['back']!;
  String get finish => _localizedValues[locale.languageCode]!['finish']!;
  String get setupCompleted =>
      _localizedValues[locale.languageCode]!['setupCompleted']!;
}

// Localizations delegate
class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      ['en', 'am', 'om', 'so', 'ti'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
