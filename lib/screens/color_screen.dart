import 'package:flutter/material.dart';
import 'package:test_task_colors/services/color_generator.dart';

/// main screen for the color changing app
class ColorScreen extends StatelessWidget {
  /// Constructor for the main screen for the color changing app
  const ColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _ColorBody(),
    );
  }
}

/// Widget that handles the background color state and tap interaction.debe
class _ColorBody extends StatefulWidget {
  const _ColorBody();

  @override
  State<_ColorBody> createState() => _ColorBodyState();
}

class _ColorBodyState extends State<_ColorBody> {
  Color _backgroundColor = const Color.fromRGBO(66, 165, 245, 1.0);

  /// Tracks the number of taps to change text color as a bonus feature
  int _tapCounter = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _backgroundColor = getRandomColor();
          _tapCounter++;
          if (_tapCounter >= 4) {
            _tapCounter = 0;
          }
        });
      },
      child: ColoredBox(
        color: _backgroundColor,
        child: Center(
          child: Text(
            'Hello there',
            style: TextStyle(
              fontSize: 20,
              color: _tapCounter >= 3 ? Colors.amberAccent : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
