import 'package:flutter/material.dart';
import 'package:navigation/app/common/theming/colors.dart';

/// Holds commonly used shadows.
class Shadows {
  static BoxShadow normal(BuildContext context) => BoxShadow(
        spreadRadius: -1,
        offset: const Offset(0, 2),
        color: AppColorScheme.of(context).shadow,
        blurRadius: 10.0,
      );
}
