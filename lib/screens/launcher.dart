import 'dart:async';
import 'package:flutter/material.dart';
import 'splash_instance.dart';

class LauncherScreen extends StatefulWidget {
  @override
  _LauncherScreenState createState() => _LauncherScreenState();
}

class _LauncherScreenState extends State<LauncherScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
              context,
              PageRouteBuilder(
                  pageBuilder: (_, __, ___) => SplashInstanceScreen()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFC7C7),
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 56,
                        child: Image.asset('assets/logo/logoKemenkes.png')),
                    Container(
                        height: 56,
                        child: Image.asset('assets/logo/logoPolkes.png'))
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 64,
                  ),
                  Text('Selamat datang',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 32,
                          fontWeight: FontWeight.w700)),
                  Text('di Program Stimulasi Prenatal',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w100)),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80),
                    child: Image.asset('assets/icons/iconApp.png'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Prima Love',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 36,
                          fontWeight: FontWeight.w700)),
                  Text('(Prenatal Stimulation of Fetal Development)',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w100)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
