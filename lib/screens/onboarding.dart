// ignore_for_file: file_names
import 'package:life_line/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:life_line/screens/signin_options.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({super.key});
  final List<Map> img = [
    {
      "image": ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset('assets/pics/doc1.png'),
      ),
      "text1": 'Donate Blood, Save Lives',
      "text2":
          'Welcome to our blood donation app, where you have the power to save lives with other community of donors'
    },
    {
      "image": Image.asset("assets/pics/doc2.png"),
      "text1": "Safe and Simple",
      'text2':
          'We follow strict medical guidelines to ensure your safety and making it easy for you to make a life-saving donation'
    },
    {
      "image": Image.asset("assets/pics/doc3.png"),
      "text1": "Become Someone’s LIfeline",
      'text2':
          'Your selfless act has the potential to extend and improve the lives of those in dire need of your help.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    var isLast = false;
    var controller = SwiperController();
    return Scaffold(
        body: Swiper(
      controller: controller,
      pagination: const SwiperPagination(),
      index: 0,
      onIndexChanged: (value) => value == 2 ? isLast = true : isLast = false,
      itemBuilder: (BuildContext context, int index) {
        return OnboardingSwipe(
          image: img[index]['image'],
          text1: img[index]['text1'],
          text2: img[index]['text2'],
          onNextPressed: () {
            // Increment index on Next button press
            isLast
                ? Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const SigninOption()),
                  )
                : controller.next();
          },
          onSkipPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const SigninOption()),
          ),
        );
      },
      viewportFraction: 1,
      scale: 1,
      itemCount: img.length,
    ));
  }
}
