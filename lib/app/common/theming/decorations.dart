import 'package:flutter/material.dart';
import 'package:navigation/app/common/theming/dimens.dart';
import 'package:navigation/app/common/theming/shadows.dart';

/// Holds commonly used decorations.
class Decorations {
  static BoxDecoration card(BuildContext context) => BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        boxShadow: [Shadows.normal(context)],
        borderRadius: const BorderRadius.all(Radius.circular(Dimens.cardCorners)),
      );

  static BoxDecoration dialog(BuildContext context) => BoxDecoration(
        boxShadow: [Shadows.normal(context)],
        borderRadius: const BorderRadius.all(Radius.circular(Dimens.dialogCorners)),
      );
}
