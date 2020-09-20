import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app/app_module.dart';

void main() => runApp(
      EasyLocalization(
        supportedLocales: [Locale('pt', 'BR'), Locale('en', 'US')],
        path: 'assets/translations',
        fallbackLocale: Locale('pt', 'BR'),
        startLocale: Locale('pt', 'BR'),
        child: ModularApp(module: AppModule()),
      ),
    );
