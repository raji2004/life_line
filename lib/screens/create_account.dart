import 'package:flutter/material.dart';
import 'package:life_line/widget/widget.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const MyText(
              "Create your account",
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
            const MyText(
              "Please fill in your correct details. Accuracy saves lives.",
              fontSize: 13,
            ),
            const SizedBox(height: 20),
            const InputBox(),
            const InputBox(placeHolder: 'Phone Number'),
            const InputBox(placeHolder: "Password"),
            const InputBox(placeHolder: 'Confirm Password'),
            const SizedBox(height: 20),
            const CheckBox(
              """I’m at least 18 years old and agree to
 the Terms of Use and Privacy Policy""",
            ),
            const SizedBox(height: 40),
            Button(text: "Continue", onPressed: () {})
          ],
        ),
      ),
    );
  }
}

class CheckBox extends StatelessWidget {
  const CheckBox(
    this.text, {
    super.key,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(value: false, onChanged: (value) {}),
        MyText(
          text,
          fontSize: 16,
        ),
      ],
    );
  }
}
