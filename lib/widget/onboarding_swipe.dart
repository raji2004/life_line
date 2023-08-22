import 'package:flutter/material.dart';
import 'package:life_line/widget/widget.dart';

class OnboardingSwipe extends StatelessWidget {
  const OnboardingSwipe({
    Key? key,
    required this.image,
    required this.text1,
    required this.text2,
    required this.onNextPressed,
    required this.onSkipPressed,
  }) : super(key: key);

  final dynamic image;
  final dynamic text1;
  final String text2;
  final VoidCallback onNextPressed;
  final VoidCallback onSkipPressed;
  final TextStyle style = const TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 24,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          image,
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: MyText(
                text1,
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: MyText(
              text2,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 5),
          SpaceBetween(
            left: TextButton(
                onPressed: onSkipPressed,
                child: const MyText(
                  "Skip",
                  color: Color(0xff2F3132),
                )),
            right: TextButton(
                onPressed: onNextPressed,
                child: const MyText(
                  "Next",
                  color: Color(0xffB00005),
                )),
          )
        ]);
  }
}

class SpaceBetween extends StatelessWidget {
  const SpaceBetween({
    super.key,
    required this.left,
    required this.right,
  });

  final Widget left;
  final Widget right;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [left, right],
    );
  }
}
