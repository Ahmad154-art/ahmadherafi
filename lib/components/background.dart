import 'package:flutter/material.dart';



class Background extends StatelessWidget {
  final Widget child;
  const Background({required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/wallpaper.jpg'), fit: BoxFit.cover)),
              child: child,
    );
  }
}
