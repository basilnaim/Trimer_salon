import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'myApp.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    path: 'assets/language',
    startLocale:  Locale('ar', 'DZ'),
    supportedLocales: [
      Locale('ar', 'DZ'),
      Locale('en', 'US'),
    ],
    // startLocale: Locale('ar', 'DZ'),
    child: MyApp(),
  ),);
}

