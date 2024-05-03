
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'signup/sign_up_screen.dart';
import 'generated/l10n.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
      localizationsDelegates: const [
        Batch16String.delegate,
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
      ],
      supportedLocales: Batch16String.delegate.supportedLocales,
      theme: ThemeData (
        colorScheme:  ColorScheme.fromSeed(seedColor: Colors.deepOrange)
      ),
    );
  }
}


class PrivateMaterialLocalizations extends LocalizationsDelegate<MaterialLocalizations>{
  @override
  bool isSupported(Locale locale) {
    // TODO: implement isSupported
    return locale.languageCode == 'vi' || locale.languageCode == 'en';
  }

  @override
  Future<MaterialLocalizations> load(Locale locale) {
    // TODO: implement load
    return SynchronousFuture<MaterialLocalizations> (PrivateMaterialLocalizations() as MaterialLocalizations);
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<MaterialLocalizations> old) => false;

}



