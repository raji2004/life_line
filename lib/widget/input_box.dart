import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {
  const InputBox({
    super.key,
    this.height = 47,
    this.width = 330,
    this.placeHolder = 'Email',
    this.borderRadius = 12,
    this.marginVertical = 6,
  });
  final double height;
  final double width;
  final String placeHolder;
  final double borderRadius;
  final double marginVertical;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: marginVertical),
      child: SizedBox(
        height: height,
        width: width,
        child: TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 1,
                color: Color(0XFFC8D9DE),
              ),
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            hintText: placeHolder,
          ),
        ),
      ),
    );
  }
}
