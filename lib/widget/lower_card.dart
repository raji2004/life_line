import 'package:flutter/material.dart';
import 'package:life_line/widget/widget.dart';

class LowerCard extends StatelessWidget {
  const LowerCard({
    super.key,
    required this.screen,
  });

  final Size screen;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(50)),
        child: Container(
          height: screen.height / 2,
          width: screen.width,
          color: const Color(0xFFFFFFFF),
          child:  Column(
            children: [
              const SizedBox(
                height: 10,
              ),
             const Rectangle(),
             const SizedBox(
                height: 25,
              ),
            const  Button(text: "Sign Up"),
             const SizedBox(
                height: 10,
              ),
             const Button(
                backgroundColor: Color(0xFFFFFFFF),
                text: "Log In",
                textColor: Color(0xFF000000),
                borderWidth: 1,
              ),
             const LineWithText(),
             ButtonWithIcon(
                icon: Image.asset('assets/apple.png'),
                text: "Continue with Apple",
              ),
          const SizedBox(height: 10),
              ButtonWithIcon(
                icon:Image.asset('assets/google.png') ,
                text: "Continue with Google",
              ),
            const  SizedBox(height: 10),
              ButtonWithIcon(
                icon: Image.asset('assets/facebook.png'),
                text: "Continue with Facebook",
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LineWithText extends StatelessWidget {
  const LineWithText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Rectangle(width: 150, height: 1),
          SizedBox(width: 10),
          Text("or", style: TextStyle(fontSize: 20)),
          SizedBox(
            width: 10,
          ),
          Rectangle(width: 150, height: 1)
        ],
      ),
    );
  }
}
