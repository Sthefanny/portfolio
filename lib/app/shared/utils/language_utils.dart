import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import '../models/enums/language_enum.dart';

class LanguageUtils {
  static void changeLanguage({@required BuildContext context, @required LanguageEnum languageEnum}) {
    switch (languageEnum) {
      case LanguageEnum.EN:
        context.locale = Locale('en', 'US');
        break;
      case LanguageEnum.PT:
      default:
        context.locale = Locale('pt', 'BR');
        break;
    }
  }
}
