import 'package:flutter/material.dart';
import 'package:life_line/widget/widget.dart';
import 'package:life_line/utils/utils.dart';


class SigninOption extends StatelessWidget {
  const SigninOption({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: LowerCard(
        child: BottomContent(),
      ),
    );
  }
}
