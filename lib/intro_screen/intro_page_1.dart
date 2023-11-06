import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFB400).withOpacity(0.5),
              Color(0xFF02873D),
            ],
          )),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(
                  'assets/images/Logo-USU-01.png',
                  height: 110,
                  width: 200,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 20),
                Text(
                  'SATU FASILKOM-TI',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                            color: Colors.black.withOpacity(0.3),
                            offset: const Offset(4.5, 4.5),
                            blurRadius: 22.5),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
