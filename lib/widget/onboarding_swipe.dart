import 'package:flutter/material.dart';

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
  final String text1;
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
          Text(
            text1,
            style: style,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              text2,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 5),
          SpaceBetween(
            left: TextButton(
                onPressed: onSkipPressed,
                child: const Text(
                  "Skip",
                  style: TextStyle(color: Color(0xff2F3132)),
                )),
            right: TextButton(
                onPressed: onNextPressed,
                child: const Text(
                  "Next",
                  style: TextStyle(color: Color(0xffB00005)),
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
