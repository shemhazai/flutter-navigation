import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigation/app/common/theming/colors.dart';

/// Holds text theme to be used in the app.
class TextThemes {
  static TextTheme build(AppColorScheme colors) {
    final TextStyle base = GoogleFonts.montserrat();

    return TextTheme(
      headline1: base.copyWith(
        fontSize: 40,
        fontWeight: FontWeight.w700,
        color: colors.textHeadline,
        letterSpacing: 0.2,
      ),
      headline2: base.copyWith(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: colors.textHeadline,
        letterSpacing: 0.2,
      ),
      headline3: base.copyWith(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: colors.textHeadline,
        letterSpacing: 0.2,
      ),
      headline4: base.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: colors.textHeadline,
        letterSpacing: 0.25,
      ),
      headline5: base.copyWith(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: colors.textHeadline,
        letterSpacing: 0,
      ),
      headline6: base.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: colors.textHeadline.withOpacity(0.8),
        letterSpacing: 0.15,
      ),
      subtitle1: base.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: colors.textHeadline,
        letterSpacing: 0.15,
      ),
      subtitle2: base.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: colors.textHeadline,
        letterSpacing: 0.5,
      ),
      bodyText1: base.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: colors.textBody,
      ),
      bodyText2: base.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: colors.textBody,
      ),
      button: base.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: colors.textBody,
        height: 1.2,
      ),
      caption: base.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: colors.textCaption,
        letterSpacing: 0,
      ),
      overline: base.copyWith(
        fontSize: 10,
        fontWeight: FontWeight.normal,
        color: colors.textCaption,
        letterSpacing: 1.5,
      ),
    );
  }
}
