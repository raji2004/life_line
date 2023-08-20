// ignore_for_file: file_names
import 'package:life_line/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class NextPage extends StatelessWidget {
  NextPage({super.key});
  final List<Map> img = [
    // Image.asset('assets/doc1.png'),
    // Image.asset('assets/doc2.png'),
    // Image.asset('assets/doc3.png'),
    {
      "image": ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset('assets/doc1.png'),
      ),
      "text1": 'Donate Blood, Save Lives',
      "text2":
          'Welcome to our blood donation app, where you have the power to save lives with other community of donors'
    },
    {
      "image": Image.asset("assets/doc2.png"),
      "text1": "Safe and Simple",
      'text2':
          'We follow strict medical guidelines to ensure your safety and making it easy for you to make a life-saving donation'
    },
    {
      "image": Image.asset("assets/doc3.png"),
      "text1": "Become Someone’s LIfeline",
      'text2':
          'Your selfless act has the potential to extend and improve the lives of those in dire need of your help.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return OnboardingSwipe(
            image: img[index]['image'],
            text1: img[index]['text1'],
            text2: img[index]['text2'],
          );
        },
        viewportFraction: 1,
        scale: 1,
        itemCount: img.length,
      )),
    );
  }
}
