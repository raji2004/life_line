import 'package:flutter/material.dart';
import 'package:life_line/widget/widget.dart';
import 'package:life_line/utils/utils.dart';

class ConfirmVerificationPage extends StatelessWidget {
  const ConfirmVerificationPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: LowerCard(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Image.asset("assets/icons/festive.png"),
            const SizedBox(height: 10),
            const MyText(
              "Your account has been verified",
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
            const SizedBox(height: 40),
            Button(text: "Continue", onPressed: () {})
          ],
        ),
      ),
    );
  }
}
