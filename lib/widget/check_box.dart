import 'package:flutter/material.dart';
import 'package:life_line/widget/widget.dart';
import 'package:life_line/utils/utils.dart';

class CheckBox extends StatefulWidget {
  const CheckBox(
    this.text, {
    super.key,
  });
  final String text;

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          checkColor: AppColors.red,
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            }),
        MyText(
          widget.text,
          fontSize: 16,
        ),
      ],
    );
  }
}
