import 'package:flutter/material.dart';
import 'package:my_stock/src/config/theme.dart' as custom_theme;
import 'package:my_stock/src/pages/login/widgets/header.dart';
import 'package:my_stock/src/pages/login/widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          // alignment: Alignment.center, // Don't use this because just center but not expanded for full screen
          fit: StackFit.expand,
          // Use this to expand width equality for all layers to full screen
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: custom_theme.Theme.gradient,
              ),
            ),
            Column(
              children: [
                Header(),
                LoginForm(),
                Text('forgot password'),
                Text('SSO'),
                Text('register')
              ],
            ),
          ]),
    );
  }
}
