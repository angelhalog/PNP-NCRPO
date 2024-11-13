import 'dart:math';
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Information'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/blue.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.white.withOpacity(0.5),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/rdNCRPO.png',
                  width: 450, 
                  height: 250, 
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 1),
                Image.asset(
                  'assets/images/infoText.png',
                  width: 320,
                  height: 170,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 10),

                // Adding 92.png below infoText.png
                Image.asset(
                  'assets/images/92.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 3),
              ]
            ),
          )
        )
      )
    );
  }
}
