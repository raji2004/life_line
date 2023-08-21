import 'package:flutter/material.dart';
import 'dart:async';
import 'package:life_line/screens/screens.dart';



class MySplashPage extends StatefulWidget {
  const MySplashPage({super.key});

  @override
  State<MySplashPage> createState() => _MySplashPageState();
}


class _MySplashPageState extends State<MySplashPage> {
  final TextStyle textStyle = const TextStyle(
    color: Color.fromRGBO(15, 71, 117, 1),
    fontWeight: FontWeight.w700,
    fontSize: 32,
  );

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  OnboardingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/Vector.png'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'LifeLine',
                style: textStyle,
              ),
              const Text(
                'The gift of life in every drop',
                style: TextStyle(color: Color(0xff0F4775)),
              ),
            ],
          )
        ],
      )),
    );
  }
}

