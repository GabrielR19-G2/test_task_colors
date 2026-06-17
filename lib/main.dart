// ignore: prefer_match_file_name

import 'package:flutter/material.dart';
import 'package:test_task_colors/screens/color_screen.dart';

void main() {
  runApp(const MyApp());
}

/// Root widget of the application.
class MyApp extends StatelessWidget {
  /// Root widget of the application.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Color Task',
      home: ColorScreen(),
    );
  }
}
