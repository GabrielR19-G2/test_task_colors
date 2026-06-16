import 'dart:math';
import 'package:flutter/material.dart';

/// Generates a random color with RGB values between 0 and 255.
Color getRandomColor() {
  final random = Random();
  return Color.fromRGBO(
    random.nextInt(256), // Red
    random.nextInt(256), // Green
    random.nextInt(256), // Blue
    1, // Opacity
  );
}
