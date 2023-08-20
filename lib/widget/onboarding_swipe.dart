import 'package:flutter/material.dart';

class OnboardingSwipe extends StatelessWidget {
  const OnboardingSwipe({
    Key? key,
    required this.image,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  final dynamic image;
  final String text1;
  final String text2;
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Skip",
                    style: TextStyle(color: Color(0xff2F3132)),
                  )),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Next",
                    style: TextStyle(color: Color(0xffB00005)),
                  )),
            ],
          )
        ]);
  }
}
