import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
    this.color,
    this.fontSize,
  });

  final VoidCallback onPressed;
  final String text;
  final double? fontSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    // return button
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ConstrainedBox(
        constraints: BoxConstraints.tightFor(
            width: MediaQuery.of(context).size.width, height: 50),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? Theme.of(context).colorScheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          onPressed: onPressed,
          child: Text(text, style: TextStyle(fontSize: fontSize)),
        ),
      ),
    );
  }
}
