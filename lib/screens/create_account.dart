import 'package:flutter/material.dart';
import 'package:life_line/widget/widget.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 10.0, right: 62),
          child: Column(
            children: [
              SizedBox(height: 10),
              MyText(
                "Create your account",
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

