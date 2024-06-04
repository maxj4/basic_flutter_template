import 'package:basic_flutter_template/providers/locale_provider.dart';
import 'package:basic_flutter_template/providers/theme_provider.dart';
import 'package:basic_flutter_template/router_config.dart';
import 'package:basic_flutter_template/utils/extensions/buildcontext/loc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => LocaleProvider()),
      ],
      child: const MyApp(),
    ),
  );
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
      // locale and theme using providers
      locale: Provider.of<LocaleProvider>(context).locale,
      theme: Provider.of<ThemeProvider>(context).currentTheme,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(context.loc.helloWorld('Flutter')),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<LocaleProvider>().toggleLocale();
              },
              child: Text(context.loc.toggleLocale),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<ThemeProvider>().toggleTheme();
              },
              child: Text(context.loc.toggleTheme),
            ),
          ],
        ),
      ),
    );
  }
}
