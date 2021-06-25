# navigation

A simple flutter application which demonstrates how to perform navigation in flutter as well as to render the .MD files. The clean archicture also has been put to work.

## Generate code (DI, flutter_gen, etc.)
```
flutter pub run build_runner build --delete-conflicting-outputs
```

## Generate mappings for langs
```
flutter pub run easy_localization:generate -f keys -o locale_keys.g.dart -S assets/translations
```
