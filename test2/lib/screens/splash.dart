import 'package:flutter/material.dart';
import 'package:test2/helpers/navigator.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';

import 'bottomNavBar/bottom_navbar_view.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 1), () {
      nextReplacementScreen(context, BottomNavbarView());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBg,
      body: Container(
        alignment: Alignment.center,
        child: Image.asset(
          'assets/icons/developing.png',
          height: Sizes.s180,
          fit: BoxFit.fitWidth,
          color: darkBlue,
        ),
      ),
    );
  }
}
