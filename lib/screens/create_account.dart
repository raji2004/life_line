import 'package:flutter/material.dart';
import 'package:life_line/widget/widget.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
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
              const InputBox(placeHolder: "Password",isPassword: true,),
              const InputBox(placeHolder: 'Confirm Password',isPassword: true,),
              const SizedBox(height: 20),
              const CheckBox("I’m at least 18 years old and agree to\nthe Terms of Use and Privacy Policy"),
              const SizedBox(height: 40),
              Button(text: "Continue", onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}


