import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'fr', 'ml'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? frText = '',
    String? mlText = '',
  }) =>
      [enText, frText, mlText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // login
  {
    '01efnkj9': {
      'en': 'Connexion',
      'fr': '',
      'ml': '',
    },
    'wjoattt9': {
      'en': 'Email',
      'fr': '',
      'ml': '',
    },
    'wyqwln20': {
      'en': 'Email',
      'fr': '',
      'ml': '',
    },
    'm3l1teno': {
      'en': 'Password',
      'fr': '',
      'ml': '',
    },
    'qzek82x4': {
      'en': 'Password',
      'fr': '',
      'ml': '',
    },
    'vpcjc2b5': {
      'en': 'Mots de passe oublié ?',
      'fr': '',
      'ml': '',
    },
    '6jwbema7': {
      'en': 'connexion',
      'fr': '',
      'ml': '',
    },
    'k5iw77xo': {
      'en': 'Login with Google',
      'fr': '',
      'ml': '',
    },
    '790xefv8': {
      'en': 'Login with apple',
      'fr': '',
      'ml': '',
    },
    'ap0jfepl': {
      'en': 'ou',
      'fr': '',
      'ml': '',
    },
    'jrwup5fv': {
      'en': 'Inscription',
      'fr': '',
      'ml': '',
    },
    'lf9x1g35': {
      'en': 'Home',
      'fr': '',
      'ml': '',
    },
  },
  // signup
  {
    '1704fnlt': {
      'en': 'Inscription',
      'fr': '',
      'ml': '',
    },
    'rrlcwwlf': {
      'en': 'Login with apple',
      'fr': '',
      'ml': '',
    },
    'ifvwdagc': {
      'en': 'Login with Google',
      'fr': '',
      'ml': '',
    },
    'azwonaoj': {
      'en': 'Name',
      'fr': '',
      'ml': '',
    },
    'n6o13pbp': {
      'en': 'Nom',
      'fr': '',
      'ml': '',
    },
    '5vnzunum': {
      'en': 'Surname',
      'fr': '',
      'ml': '',
    },
    'rgtip29g': {
      'en': 'Prénom',
      'fr': '',
      'ml': '',
    },
    'k34tohdc': {
      'en': 'Email',
      'fr': '',
      'ml': '',
    },
    'dpb9a38e': {
      'en': 'exemple@email.com',
      'fr': '',
      'ml': '',
    },
    '0ij343nf': {
      'en': 'Password',
      'fr': '',
      'ml': '',
    },
    'sgng5m61': {
      'en': '**********',
      'fr': '',
      'ml': '',
    },
    'qg31jff0': {
      'en': 'Confirm Password',
      'fr': '',
      'ml': '',
    },
    'wr65blay': {
      'en': '**********',
      'fr': '',
      'ml': '',
    },
    't75g22co': {
      'en': 'm’inscrire',
      'fr': '',
      'ml': '',
    },
    'ud4jp5mr': {
      'en': 'Home',
      'fr': '',
      'ml': '',
    },
  },
  // home_page
  {
    's7hvi40f': {
      'en': 'Fans',
      'fr': '',
      'ml': '',
    },
    'r4ncm0yg': {
      'en': 'Groupes recomm',
      'fr': '',
      'ml': '',
    },
    'aebw7efa': {
      'en': 'Fans de l\'épopée 93',
      'fr': '',
      'ml': '',
    },
    'orjwtrf9': {
      'en': 'Viens revivre les meilleurs souvenir de cette époque',
      'fr': '',
      'ml': '',
    },
    '3te3bd3p': {
      'en': 'Join',
      'fr': '',
      'ml': '',
    },
    'zax4aoth': {
      'en': 'Fans de l\'épopée 93',
      'fr': '',
      'ml': '',
    },
    'byq9q6tr': {
      'en': 'Viens revivre les meilleurs souvenir de cette époque',
      'fr': '',
      'ml': '',
    },
    'dq45890g': {
      'en': 'Join',
      'fr': '',
      'ml': '',
    },
    '3ccyex5d': {
      'en': 'Places where i can watch \nthe next match with other fans',
      'fr': '',
      'ml': '',
    },
    'mrztwxwe': {
      'en': 'Afficher',
      'fr': '',
      'ml': '',
    },
    'mikftq08': {
      'en': 'Sign Out',
      'fr': '',
      'ml': '',
    },
    'z5ozqpqp': {
      'en': 'Matchs',
      'fr': '',
      'ml': '',
    },
    'wfp4mdgk': {
      'en': 'Home',
      'fr': '',
      'ml': '',
    },
  },
  // forgot_page
  {
    'a3p4qyoc': {
      'en': 'Email',
      'fr': '',
      'ml': '',
    },
    'pshkuthu': {
      'en': 'submit',
      'fr': '',
      'ml': '',
    },
    'kx16i8gf': {
      'en': 'forgot password',
      'fr': '',
      'ml': '',
    },
    'sh3diyyf': {
      'en': 'Home',
      'fr': '',
      'ml': '',
    },
  },
  // description_page
  {
    'vf3hmycn': {
      'en': 'Décrivez-vous',
      'fr': '',
      'ml': '',
    },
    'davw7bzb': {
      'en': 'Description',
      'fr': '',
      'ml': '',
    },
    's9r7ptqb': {
      'en': 'Décrivez qui vous supporter....',
      'fr': '',
      'ml': '',
    },
    'zewpr5m4': {
      'en': 'connexion',
      'fr': '',
      'ml': '',
    },
    'mjuyn11y': {
      'en': 'Home',
      'fr': '',
      'ml': '',
    },
  },
  // group_chat
  {
    'dn57frlt': {
      'en': 'In Development',
      'fr': '',
      'ml': '',
    },
    '57y4kmrw': {
      'en': 'group chat',
      'fr': '',
      'ml': '',
    },
    'u3j5qk1k': {
      'en': 'Home',
      'fr': '',
      'ml': '',
    },
  },
  // personal_chat
  {
    '20leweaf': {
      'en': 'personal',
      'fr': '',
      'ml': '',
    },
    'fzrmsrkw': {
      'en': 'Home',
      'fr': '',
      'ml': '',
    },
  },
  // inscription_page
  {
    'rd5n8oe2': {
      'en': 'Sign Out',
      'fr': '',
      'ml': '',
    },
    'bi9nkhv7': {
      'en': 'Choisi ton équipe',
      'fr': '',
      'ml': '',
    },
    'tt7kqwez': {
      'en': 'Quel sport ?',
      'fr': '',
      'ml': '',
    },
    'veaickj9': {
      'en': 'Football',
      'fr': '',
      'ml': '',
    },
    'bl7x6zs1': {
      'en': 'Rugby',
      'fr': '',
      'ml': '',
    },
    'gr7juxgl': {
      'en': 'Quelle ligue ?',
      'fr': '',
      'ml': '',
    },
    '1u64pi32': {
      'en': 'Quel club ?',
      'fr': '',
      'ml': '',
    },
    'ljx95wcv': {
      'en': 'Suivant',
      'fr': '',
      'ml': '',
    },
    'h4ze6s29': {
      'en': 'Home',
      'fr': '',
      'ml': '',
    },
  },
  // Miscellaneous
  {
    '0xwskrru': {
      'en': '',
      'fr': '',
      'ml': '',
    },
    '4dyd8yh1': {
      'en': '',
      'fr': '',
      'ml': '',
    },
    'noi2818d': {
      'en': '',
      'fr': '',
      'ml': '',
    },
    '2jn4uk89': {
      'en': '',
      'fr': '',
      'ml': '',
    },
    'epsb8zu5': {
      'en': '',
      'fr': '',
      'ml': '',
    },
    'aijsp96m': {
      'en': '',
      'fr': '',
      'ml': '',
    },
    '9osfuj12': {
      'en': '',
      'fr': '',
      'ml': '',
    },
    'd9n4qkfz': {
      'en': '',
      'fr': '',
      'ml': '',
    },
    '42fmuw1s': {
      'en': '',
      'fr': '',
      'ml': '',
    },
    'dtjewhn7': {
      'en': '',
      'fr': '',
      'ml': '',
    },
    'f5fs9n1a': {
      'en': '',
      'fr': '',
      'ml': '',
    },
    'qvflhwy9': {
      'en': '',
      'fr': '',
      'ml': '',
    },
    's6ts08hn': {
      'en': '',
      'fr': '',
      'ml': '',
    },
    '5pccf65b': {
      'en': '',
      'fr': '',
      'ml': '',
    },
    'mkluilou': {
      'en': '',
      'fr': '',
      'ml': '',
    },
    'w6otymef': {
      'en': '',
      'fr': '',
      'ml': '',
    },
    'xu3wbb6j': {
      'en': '',
      'fr': '',
      'ml': '',
    },
    'q8ruqbt0': {
      'en': '',
      'fr': '',
      'ml': '',
    },
    'aizq75i9': {
      'en': '',
      'fr': '',
      'ml': '',
    },
    'r5td5rpf': {
      'en': '',
      'fr': '',
      'ml': '',
    },
    '98xeldda': {
      'en': '',
      'fr': '',
      'ml': '',
    },
    'y1sn7lnb': {
      'en': '',
      'fr': '',
      'ml': '',
    },
    '8g75mf23': {
      'en': '',
      'fr': '',
      'ml': '',
    },
    '3l4zsnss': {
      'en': '',
      'fr': '',
      'ml': '',
    },
    '3bg25y0m': {
      'en': '',
      'fr': '',
      'ml': '',
    },
  },
].reduce((a, b) => a..addAll(b));
