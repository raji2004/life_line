import 'package:flutter/material.dart';
import 'package:life_line/widget/widget.dart';

class SigninOption extends StatelessWidget {
  const SigninOption({super.key});

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF4E5E5),
      body: LowerCard(screen: screen),
    );
  }
}
