import 'dart:async';

import 'package:flutter/material.dart';
import 'package:signal_flutter/Constants.dart';
import 'package:signal_flutter/ui/HomePage.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (ctx) => HomePage(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    SplashPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashColor,
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: Image.asset("assets/images/icon.png"),
        ),
      ),
    );
  }
}
