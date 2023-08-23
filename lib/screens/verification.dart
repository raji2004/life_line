import 'package:flutter/material.dart';
import 'package:life_line/widget/widget.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar:  MyAppBar(
        image: AssetImage('assets/background/bg3.png'),
        scaleY: 1.5,
      ),
      body: Center(
        child: PinCodeBar(),
      ),
    );
  }
}

