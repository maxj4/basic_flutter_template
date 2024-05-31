import 'package:basic_flutter_template/router_config.dart';
import 'package:basic_flutter_template/utils/extensions/buildcontext/loc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Basic Flutter Template',
      debugShowCheckedModeBanner: false,
      // l10n
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale('en'), // Remove this to use device locale
      // go_router
      routerConfig: router,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Flutter Template'),
      ),
      body: Center(
        child: Text(context.loc.helloWorld('Flutter')),
      ),
    );
  }
}
