import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:life_line/utils/utils.dart';


class PinCodeBar extends StatelessWidget {
  const PinCodeBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 78.0),
      child: PinCodeTextField(
          appContext: context,
          length: 4, // Set the length of the PIN code
          onChanged: (value) => debugPrint("Current input: $value"),
          onCompleted: (value) => debugPrint("Entered PIN: $value"),
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box, // You can also use other shapes like underline or none
            fieldHeight: 50,
            fieldWidth: 50,
            activeFillColor:
                Colors.white, // Fill color when a digit is entered
            inactiveFillColor:
                Colors.grey[200], // Fill color when no digit is entered
            selectedFillColor:
                Colors.blue, // Fill color when a digit is selected
            activeColor:
                AppColors.offWhite, // Border color when a digit is entered
            inactiveColor:
                AppColors.offWhite, // Border color when no digit is entered
            selectedColor:
                AppColors.offWhite, // Border color when a digit is selected
          )),
    );
  }
}
