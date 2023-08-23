import 'package:flutter/material.dart';
import 'package:life_line/widget/widget.dart';
import 'confirm_verification.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        image: AssetImage('assets/background/bg3.png'),
        scaleY: 1.5,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const MyText(
              "Verification",
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
            const SizedBox(height: 10),
            const MyRichText(boldText: "Bo****@gmail.com"),
            const SizedBox(height: 25),
            const PinCodeBar(),
            const MyRichText(
              text: "Didn’t receive any code? ",
              boldText: "Resend",
            ),
            const SizedBox(height: 60),
            Button(
                text: "Verify",
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const ConfirmVerificationPage()));
                })
          ],
        ),
      ),
    );
  }
}
