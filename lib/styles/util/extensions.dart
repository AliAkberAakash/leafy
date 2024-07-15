import 'package:flutter/material.dart';
import 'package:leafy/styles/theme/leafy_extension.dart';

extension LeafyExtension on BuildContext {
  LeafyColorExtension get themeExtension =>
      Theme.of(this).extension<LeafyColorExtension>()!;
}
