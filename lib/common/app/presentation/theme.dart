import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_fonts/google_fonts.dart';

part 'theme.freezed.dart';

ThemeData get lightTheme => _buildTheme(AppColorSchemes.light);

ThemeData get darkTheme => _buildTheme(AppColorSchemes.dark);

ThemeData _buildTheme(AppColorScheme colors) {
  final _base = ThemeData.from(
    colorScheme: colors.toColorScheme(),
    textTheme: _buildTextTheme(colors),
  );

  return _base.copyWith(
    appBarTheme: AppBarTheme(
      brightness: colors.brightness,
      color: colors.surface,
      elevation: 0,
      textTheme: _base.textTheme,
      iconTheme: _base.iconTheme.copyWith(color: colors.secondary),
    ),
    buttonTheme: _base.buttonTheme.copyWith(
      buttonColor: colors.secondary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.buttonCornerRound),
      ),
    ),
    dividerColor: colors.divider,
    indicatorColor: colors.primary,
    canvasColor: colors.canvas,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme _buildTextTheme(AppColorScheme colorScheme) {
  final bold = FontWeight.w700;
  final regular = FontWeight.w400;

  return GoogleFonts.montserratTextTheme().merge(TextTheme(
    // Headlines
    headline1: TextStyle(fontSize: 96, fontWeight: bold, color: colorScheme.textHeader),
    headline2: TextStyle(fontSize: 60, fontWeight: bold, color: colorScheme.textHeader),
    headline3: TextStyle(fontSize: 48, fontWeight: bold, color: colorScheme.textHeader),
    headline4: TextStyle(fontSize: 34, fontWeight: bold, color: colorScheme.textHeader),
    headline5: TextStyle(fontSize: 24, fontWeight: bold, color: colorScheme.textHeader),
    headline6: TextStyle(fontSize: 20, fontWeight: bold, color: colorScheme.textHeader),

    // Subtitles
    subtitle1: TextStyle(fontSize: 16, fontWeight: regular, color: colorScheme.textBody),
    subtitle2: TextStyle(fontSize: 14, fontWeight: regular, color: colorScheme.textBody),

    // Paragraphs
    bodyText1: TextStyle(fontSize: 16, fontWeight: regular, color: colorScheme.textBody),
    bodyText2: TextStyle(fontSize: 14, fontWeight: regular, color: colorScheme.textBody),

    caption: TextStyle(fontSize: 12, fontWeight: regular, color: colorScheme.textCaption),

    overline: TextStyle(fontSize: 10, fontWeight: regular, color: colorScheme.textHeader),

    button: TextStyle(fontSize: 18, fontWeight: bold, color: colorScheme.textBody),
  ));
}

class AppColorSchemes {
  static const light = AppColorScheme(
    brightness: Brightness.light,
    primary: PaletteBase.gray1,
    primaryVariant: PaletteBase.gray4,
    onPrimary: PaletteBase.white,
    secondary: PaletteBase.blue1,
    secondaryVariant: PaletteBase.blue2,
    onSecondary: PaletteBase.white,
    background: PaletteBase.white,
    onBackground: PaletteBase.gray1,
    surface: PaletteBase.gray8,
    onSurface: PaletteBase.gray1,
    error: PaletteBase.red1,
    onError: PaletteBase.white,
    divider: PaletteBase.gray7,
    canvas: PaletteBase.black,
    textHeader: PaletteBase.black,
    textBody: PaletteBase.gray2,
    textCaption: PaletteBase.gray2,
  );

  static const dark = AppColorScheme(
    brightness: Brightness.dark,
    primary: PaletteBase.white,
    primaryVariant: PaletteBase.gray5,
    onPrimary: PaletteBase.gray1,
    secondary: PaletteBase.orange1,
    secondaryVariant: PaletteBase.orange2,
    onSecondary: PaletteBase.white,
    background: PaletteBase.gray1,
    onBackground: PaletteBase.white,
    surface: PaletteBase.gray2,
    onSurface: PaletteBase.white,
    error: PaletteBase.red1,
    onError: PaletteBase.white,
    divider: PaletteBase.gray3,
    canvas: PaletteBase.white,
    textHeader: PaletteBase.white,
    textBody: PaletteBase.gray7,
    textCaption: PaletteBase.gray7,
  );
}

/// Similar to [ColorScheme] but allows to define custom colors.
@freezed
abstract class AppColorScheme with _$AppColorScheme {
  const AppColorScheme._();

  const factory AppColorScheme({
    @required Brightness brightness,

    /// base
    @required Color primary,
    @required Color primaryVariant,
    @required Color onPrimary,
    @required Color secondary,
    @required Color secondaryVariant,
    @required Color onSecondary,
    @required Color background,
    @required Color onBackground,
    @required Color surface,
    @required Color onSurface,
    @required Color error,
    @required Color onError,
    @required Color divider,
    @required Color canvas,

    /// texts
    @required Color textHeader,
    @required Color textBody,
    @required Color textCaption,
  }) = _AppColorScheme;

  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      primaryVariant: primaryVariant,
      onPrimary: onPrimary,
      secondary: secondary,
      secondaryVariant: secondaryVariant,
      onSecondary: onSecondary,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      error: error,
      onError: onError,
    );
  }

  static AppColorScheme of(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    if (brightness == Brightness.dark) return AppColorSchemes.dark;
    return AppColorSchemes.light;
  }
}

/// Holds a palette of app colors.
/// Do no use directly - access colors through [ColorScheme] or [AppColorScheme]
/// ```
/// var colorScheme = Theme.of(context).colorScheme; /// base palette
/// var colorScheme = AppColorScheme.of(context);    /// custom palette
/// ```
class PaletteBase {
  const PaletteBase();

  // grayscale
  static const Color black = Color(0xFF000000);
  static const Color gray1 = Color(0xFF303030);
  static const Color gray2 = Color(0xFF444444);
  static const Color gray3 = Color(0xFF606060);
  static const Color gray4 = Color(0xFF808080);
  static const Color gray5 = Color(0xFFA0A0A0);
  static const Color gray6 = Color(0xFFCECECE);
  static const Color gray7 = Color(0xFFE7E7E7);
  static const Color gray8 = Color(0xFFF4F4F4);
  static const Color white = Color(0xFFFFFFFF);

  // colors
  static const Color red1 = Color(0xFFEB2626);
  static const Color orange1 = Color(0xFFFFA726);
  static const Color orange2 = Color(0xFFE98634);
  static const Color blue1 = Color(0xFF2E72DF);
  static const Color blue2 = Color(0xFF2D9CDB);
}

class Dimens {
  const Dimens();

  static const double buttonCornerRound = 4.0;
}
