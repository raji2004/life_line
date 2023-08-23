import 'package:flutter/material.dart';
import 'package:life_line/utils/utils.dart';

class Rectangle extends StatelessWidget {
  const Rectangle({
    super.key,
    this.width=69,
    this.height=7
  });
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        color: AppColors.textColor,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
    );
  }
}
