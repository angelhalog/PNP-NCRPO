import 'package:flutter/material.dart';
import 'dart:async';

import 'package:ncrpo_mobile_app_information/home/home.dart';
//Splash screen
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Navigate to the home screen after a delay
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => MyHomePage(title: 'PNP NCRPO'),
      ));
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/splash.png'),// Your splash image
            CircularProgressIndicator(), 
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}