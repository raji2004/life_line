import 'package:flutter/material.dart';
import 'package:life_line/screens/screens.dart';
import 'package:life_line/screens/verification.dart';




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
        useMaterial3: true,
        fontFamily: "Satoshi"
      ),
      home: const VerificationPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
