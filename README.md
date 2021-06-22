# navigation

Recruitment task for simpleclub

## Generate code (DI, flutter_gen, etc.)
```
flutter pub run build_runner build --delete-conflicting-outputs
```

## Generate mappings for langs
```
flutter pub run easy_localization:generate -f keys -o locale_keys.g.dart -S assets/langs
```
