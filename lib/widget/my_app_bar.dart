import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
    this.image = const AssetImage('assets/background/bg.png'),
    this.scaleY = 1.9,
    this.paddingBottom=30,
    this.paddingRight=0
  });

  final AssetImage image;
  final double scaleY;
  final double paddingBottom;
  final double paddingRight;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Transform.scale(
        scaleY: scaleY,
        scaleX: 1,
        alignment: Alignment.topCenter,
        child: Image(
          image: image,
          fit: BoxFit.fill,
        ),
      ),
      leading:  Padding(
        padding:  EdgeInsets.only(bottom: paddingBottom),
        child: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
