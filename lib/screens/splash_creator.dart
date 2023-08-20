import 'dart:async';
import 'package:flutter/material.dart';
import 'home.dart';

class SplashCreatorScreen extends StatefulWidget {
  @override
  _SplashCreatorScreenState createState() => _SplashCreatorScreenState();
}

class _SplashCreatorScreenState extends State<SplashCreatorScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Created Sinta',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/iconInstagram.png',
                    height: 24,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'sintaaherdis',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
