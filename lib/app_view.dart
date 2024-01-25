import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/common/controller/lang_provider.dart';
import 'src/common/service/l10n/app_localizations.dart';
import 'src/screens/splash/splash_screen.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LangProvider>(
      create: (context) => LangProvider(),
      child: Builder(builder: (context) {
        return MaterialApp(
          title: 'Find Sport',
          locale: Locale(context.watch<LangProvider>().dropDownValue),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const SplashScreen(),
        );
      }),
    );
  }
}
