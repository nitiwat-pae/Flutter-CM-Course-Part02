import 'dart:ui';

import 'package:flutter/cupertino.dart';

class Theme {
  const Theme(); // This line force all variable in class Theme to be constant or final variable type
  static const Color gradientStart = Color(0xFF4e54c8);
  static const Color gradientEnd = Color(0xFF8f94fb);
  static const Gradient gradient = LinearGradient(
    colors: [gradientStart, gradientEnd],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.0, 1.0],
  );
}
