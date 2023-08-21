import 'package:flutter/material.dart';
import 'dart:async';
import 'package:life_line/screens/screens.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MySplashPage extends StatefulWidget {
  const MySplashPage({super.key});

  @override
  State<MySplashPage> createState() => _MySplashPageState();
}

class _MySplashPageState extends State<MySplashPage> {
  final TextStyle textStyle = const TextStyle(
    color: Color(0xFF0F4775),
    fontWeight: FontWeight.w700,
    fontSize: 32,
  );

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 600,
                ),
                Image.asset('assets/Vector.png'),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text(
                        'LifeLine',
                        style: textStyle,
                      ),
                    ),
                    const Text(
                      'The gift of life in every drop',
                      style: TextStyle(color: Color(0xff0F4775)),
                    ),
                  ],
                ),
              ],
            ),
            // ignore: prefer_const_constructors
            Align(
              heightFactor: 3,
              alignment: Alignment.bottomCenter,
              child: const SpinKitCubeGrid(
                color: Color(0xff0F4775),
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
