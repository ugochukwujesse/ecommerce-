import 'package:flutter/material.dart';
import 'screen/splash_screen.dart';

void main() {
  runApp(const Ecommerce());
}
class Ecommerce extends StatelessWidget {
  const Ecommerce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
