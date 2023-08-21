import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.text,
    this.borderWidth = 0,
    this.vertical = 10.0,
    this.horizontal = 130.0,
    this.backgroundColor = const Color(0xFFB00005),
    this.textColor = const Color(0xFFFFFFFF),
  });

  final Color backgroundColor;
  final Color textColor;
  final String text;
  final double borderWidth;
  final double vertical;
  final double horizontal;

  ButtonStyle getButtonStyle() {
    return ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
        ),
        side: MaterialStateProperty.all<BorderSide>(
            BorderSide(width: borderWidth, color: const Color(0xFFC8D9DE))));
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: getButtonStyle(),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 19,
        ),
      ),
    );
  }
}

class ButtonWithIcon extends StatelessWidget {
  const ButtonWithIcon({
    super.key,
    required this.icon,
    required this.text,
    this.borderWidth = 1,
    this.vertical = 10.0,
    this.horizontal = 100.0,
     this.backgroundColor = const Color(0xFFFFFFFF),
    this.textColor =const Color.fromARGB(255, 0, 0, 0),
  });

  final Color backgroundColor;
  final Color textColor;
  final String text;
  final double borderWidth;
  final double vertical;
  final double horizontal;
  final dynamic icon;

  ButtonStyle getButtonStyle() {
    return ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
        ),
        side: MaterialStateProperty.all<BorderSide>(
            BorderSide(width: borderWidth, color: const Color(0xFFC8D9DE))));
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: getButtonStyle(),
      onPressed: () {},
      icon: icon,
      label: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 13,
        ),
      ),
    );
  }
}
