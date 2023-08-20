import 'dart:async';
import 'package:flutter/material.dart';
import 'package:life_line/screens/screens.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// to push
// Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const NextPage()),
//               );

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        MaterialPageRoute(builder: (context) =>  NextPage()),
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
