import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double fontSize;
  final FontWeight fontWeight;
  final Color textColor;
  final Color buttonColor;
  final EdgeInsetsGeometry padding;
  final BorderRadiusGeometry borderRadius;

  const MyButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.bold,
    this.textColor = Colors.white,
    this.buttonColor = Colors.blue,
    this.padding = const EdgeInsets.symmetric(vertical: 15),
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: padding,
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: textColor,
        ),
      ),
    );
  }
}
