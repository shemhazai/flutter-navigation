import 'package:flutter/material.dart';

/// Holds common dimensions used in the app.
class Dimens {
  const Dimens();

  // buttons
  static const double buttonRoundCorners = 25;
  static const double buttonRectCorners = 6;
  static const double buttonElevation = 5;
  static const double buttonBorder = 1.5;

  // icons
  static const double iconSize = 20;

  // text fields
  static const double textFieldCorners = 10;
}

/// Holds commonly used paddings.
class Insets {
  // common
  static const EdgeInsets huge = EdgeInsets.all(64);
  static const EdgeInsets bigger = EdgeInsets.all(48);
  static const EdgeInsets big = EdgeInsets.all(32);
  static const EdgeInsets normal = EdgeInsets.all(24);
  static const EdgeInsets small = EdgeInsets.all(16);
  static const EdgeInsets smaller = EdgeInsets.all(12);
  static const EdgeInsets tiny = EdgeInsets.all(8);
  static const EdgeInsets tiniest = EdgeInsets.all(4);

  // button
  static const EdgeInsets button = EdgeInsets.symmetric(
    horizontal: 24,
    vertical: 16,
  );
}

/// Holds commonly used spacing values.
class Spacing {
  static const SizedBox huge = SizedBox(width: 64, height: 64);
  static const SizedBox bigger = SizedBox(width: 48, height: 48);
  static const SizedBox big = SizedBox(width: 32, height: 32);
  static const SizedBox normal = SizedBox(width: 24, height: 24);
  static const SizedBox small = SizedBox(width: 16, height: 16);
  static const SizedBox smaller = SizedBox(width: 12, height: 12);
  static const SizedBox tiny = SizedBox(width: 8, height: 8);
  static const SizedBox tiniest = SizedBox(width: 4, height: 4);
}
