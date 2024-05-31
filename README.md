# basic_flutter_template

A basic Flutter project to serve as a starting point for new Apps. This template is set up with several usseful dependencies.

Currently included packages:
- [intl](https://pub.dev/packages/intl)

## Internationalization (i18n & l10n)

This template uses the [intl](https://pub.dev/packages/intl) package for translations.
The translation files are located at `lib/l10n/`. Currently German (`de`) and English (`en`) are supported. To add more languages, just add a corresponding `app_<language_code>.arb` file and add the language code to the `CFBundleLocalizations` to the `info.plist` file (iOS-specific). Remember to run `flutter pub get` after you've added new translation keys or files to make sure everything is generated.

With the given extension on `BuildContext` (see `lib/utils/extensions/buildcontext/loc.dart`) you can then use your translation keys as follows:

```dart
Text(context.loc.helloWorld('Flutter'))
```



