import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_stock/src/config/theme.dart' as custom_theme;

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        _buildForm(),
        _buildLoginButton(),
      ],
    );
  }

  Card _buildForm() => Card(
        margin: EdgeInsets.only(bottom: 22, left: 22, right: 22),
        elevation: 5.0,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 22, bottom: 44, left: 22, right: 22),
          child: InputForm(),
        ),
      );

  Container _buildLoginButton() => Container(
        width: 180,
        height: 50,
        decoration: _boxDecoration(),
        child: TextButton(
          onPressed: () {
            //todo
          },
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))
          ),
          child: Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      );

  BoxDecoration _boxDecoration() {
    final boxShadowItem = (Color color) => BoxShadow(
          color: color,
          offset: Offset(1.0, 6.0),
          blurRadius: 10.0,
        );
    return BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
      boxShadow: [
        boxShadowItem(custom_theme.Theme.gradientStart),
        boxShadowItem(custom_theme.Theme.gradientEnd),
      ],
      gradient: custom_theme.Theme.gradientLoginButton,
    );
  }
}

class InputForm extends StatelessWidget {
  final _color = Colors.black54;

  const InputForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildUsername(),
        Divider(
          thickness: 1,
          indent: 8,
          endIndent: 8,
          height: 22,
        ),
        _buildPassword(),
      ],
    );
  }

  TextStyle _textStyle() => TextStyle(
        fontWeight: FontWeight.w500,
        color: _color,
      );

  TextField _buildPassword() => TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            labelText: 'Password',
            labelStyle: _textStyle(),
            icon: FaIcon(
              FontAwesomeIcons.lock,
              size: 22.0,
              color: _color,
            )),
        obscureText: true,
      );

  TextField _buildUsername() => TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            labelText: 'Email address',
            labelStyle: _textStyle(),
            hintText: 'nitiwat@dev.com',
            hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
            icon: FaIcon(
              FontAwesomeIcons.envelope,
              size: 22.0,
              color: _color,
            )),
      );
}
