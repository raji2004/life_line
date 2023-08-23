import 'package:flutter/material.dart';
import 'package:life_line/widget/widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: const MyAppBar(
        scaleY: 1.3,
        image: AssetImage("assets/background/bg2.png"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const MyText(
              "Welcome back",
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
            const MyText(
              "We’re excited to have you back!",
              fontSize: 13,
            ),
            const SizedBox(height: 20),
            const InputBox(),
            const InputBox(
              placeHolder: "Password",
              isPassword: true,
            ),
            const SizedBox(height: 10),
            const SpaceBetween(
              width: 330,
              left: CheckBox("Remember me"),
              right: MyText("Forgot Password"),
            ),
            const SizedBox(height: 20),
            Button(text: "Continue", onPressed: () {})
          ],
        ),
      ),
    );
  }
}
