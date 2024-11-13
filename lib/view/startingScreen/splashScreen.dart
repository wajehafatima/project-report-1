import 'package:flutter/material.dart';
import 'package:projectrp/controller/constants/appIcons.dart';
import 'package:projectrp/view/homeScreen/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Homescreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(

        ),
        child: Center(
    child: Center(
    child: Image.asset(Appicons.splash)
        ),
      ),
      ) );
  }
}
