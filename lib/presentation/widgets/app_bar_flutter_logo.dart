import 'package:flutter/material.dart';

class AppBarFlutterLogo extends StatelessWidget {
  const AppBarFlutterLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Image.asset(
        'assets/images/flutter-green-logo.png',
        width: 35.0,
      ),
    );
  }
}
