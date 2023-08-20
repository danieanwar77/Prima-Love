import 'dart:async';
import 'package:flutter/material.dart';
import 'splash_creator.dart';
import 'home.dart';

class SplashInstanceScreen extends StatefulWidget {
  @override
  _SplashInstanceScreenState createState() => _SplashInstanceScreenState();
}

class _SplashInstanceScreenState extends State<SplashInstanceScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
              context,
              PageRouteBuilder(pageBuilder: (_, __, ___) => HomeScreen()),
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
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Image.asset('assets/logo/logoPolkes.png'),
            ),
            SizedBox(
              height: 12,
            ),
            Text('Informasi Pengembang',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w700)),
            SizedBox(
              height: 8,
            ),
            Text('Sinta',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                )),
            Text('Wiwin Mintarsih P, S.SiT., M.Kes',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                )),
            Text('Helmi Diana, S.ST., M.Keb',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                ))
          ],
        ),
      ),
    );
  }
}
