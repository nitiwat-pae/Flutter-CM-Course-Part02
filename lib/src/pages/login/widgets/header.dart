import 'package:flutter/material.dart';
import 'package:my_stock/src/constants/assets.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 100, bottom: 38),
        child: Image.asset(
          Asset.LOGO_IMAGE, height: 80,
        ));
  }
}
