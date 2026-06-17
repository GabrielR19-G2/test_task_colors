import 'dart:math';
import 'package:flutter/material.dart';

/// Generates a random color with RGB values between 0 and 255.
Color getRandomColor() {
  final random = Random();

  const int maxRgbValue = 256;

  const double opacity = 1.0;

  return Color.fromRGBO(
    random.nextInt(maxRgbValue),
    random.nextInt(maxRgbValue),
    random.nextInt(maxRgbValue),
    opacity,
  );
}
