import 'package:flutter/material.dart';
import 'package:leafy/styles/leafy_extension.dart';

extension LeafyThemeExtension on BuildContext {
  LeafyExtension get theme =>
      Theme.of(this).extension<LeafyExtension>()!;
}
