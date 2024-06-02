import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text;
  const StyledText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 30, color: Color.fromARGB(255, 54, 63, 244)),
    );
  }
}
