import 'package:flutter/material.dart';
import 'package:life_line/widget/widget.dart';
import 'package:life_line/utils/utils.dart';


class LowerCard extends StatelessWidget {
  const LowerCard({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.bottomCenter,
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(50)),
        child: Container(
          height: screen.height / 2,
          width: screen.width,
          color:  AppColors.offWhite,
          child: child,
        ),
      ),
    );
  }
}

class BottomContent extends StatelessWidget {
  const BottomContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        const Rectangle(),
        const SizedBox(height: 25),
        Button.signup(context),
        const SizedBox(height: 10),
        Button.login(context),
        const LineWithText(),
        ButtonWithIcon(
          icon: Image.asset('assets/icons/apple.png'),
          text: "Continue with Apple",
        ),
        const SizedBox(height: 10),
        ButtonWithIcon(
          icon: Padding(
            padding: const EdgeInsets.only(left: 3),
            child: Image.asset('assets/icons/google.png')),
          text: "Continue with Google",
        ),
        const SizedBox(height: 10),
        ButtonWithIcon(
          icon: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Image.asset('assets/icons/facebook.png'),
          ),
          text: "Continue with Facebook",
          horizontal: 82,
          backgroundColor: Colors.transparent,
        )
      ],
    );
  }
}

class LineWithText extends StatelessWidget {
  const LineWithText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Rectangle(width: 150, height: 1),
          SizedBox(width: 10),
          MyText("or", fontSize: 20),
          SizedBox(
            width: 10,
          ),
          Rectangle(width: 150, height: 1)
        ],
      ),
    );
  }
}
