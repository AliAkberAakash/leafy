import 'dart:ui';

class CustomColorExtension {
  final Color lfCustomFunky;
  final Color lfCustomOnFunky;

  CustomColorExtension({required this.lfCustomFunky, required this.lfCustomOnFunky});

  CustomColorExtension lerp(CustomColorExtension other, double t) {
    return CustomColorExtension(
        lfCustomFunky: Color.lerp(lfCustomFunky,other.lfCustomFunky, t)!,
        lfCustomOnFunky: Color.lerp(lfCustomOnFunky,other.lfCustomOnFunky, t)!,
    );
  }

}

