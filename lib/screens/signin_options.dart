import 'package:flutter/material.dart';
import 'package:life_line/widget/widget.dart';

class SigninOption extends StatelessWidget {
  const SigninOption({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF4E5E5),
      body: LowerCard(
        child: BottomContent(),
      ),
    );
  }
}
