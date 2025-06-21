import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'i18n/translations.g.dart';
import 'sugar_calculator/sugar_calculator_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  
  LocaleSettings.useDeviceLocale();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return TranslationProvider(
      child: MaterialApp(
        title: t.app.title,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SugarCalculatorScreen(),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: AppLocaleUtils.supportedLocales,
      ),
    );
  }
}
