import 'package:flutter/material.dart';
import 'package:my_stock/src/config/theme.dart' as custom_theme;

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Container(
          decoration: BoxDecoration(
            gradient: custom_theme.Theme.gradient,
          ),
        ),
        Column(
          children: [
            Text('header'),
            Text('form'),
            Text('forgot password'),
            Text('SSO'),
            Text('register')
          ],
        ),
      ]),
    );
  }
}
