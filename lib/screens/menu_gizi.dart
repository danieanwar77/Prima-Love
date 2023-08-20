import 'dart:async';
import 'package:flutter/material.dart';
import 'menu_waktu.dart';
import 'home.dart';
import 'menu_pantau.dart';

class Gizi extends StatelessWidget {
  const Gizi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFC7C7),
        body: LayoutBuilder(builder: (context, constraint) {
          return SafeArea(
            child: GestureDetector(
              onHorizontalDragUpdate: (details) {
                if (details.delta.dx > 8) {
                  Navigator.push(context, SlideLeftRoute());
                }
              },
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraint.maxHeight),
                  child: IntrinsicHeight(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 24, right: 24, bottom: 26),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 24,
                                      ),
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushAndRemoveUntil(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          HomeScreen()),
                                                  (route) => false);
                                            },
                                            child: Icon(
                                              Icons.arrow_back_ios_new,
                                              size: 24.0,
                                            ),
                                          ),
                                          Expanded(
                                            child: const Text(
                                              'Makanan Penuh Gizi Untuk Buah Hati',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 24,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0)),
                              color: Color(0xffF6F6F6),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 24, left: 24, right: 24, bottom: 40),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.asset(
                                          'assets/contents/content7.png'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Container(
                                      width: double.infinity,
                                      child: RichText(
                                        textAlign: TextAlign.justify,
                                        text: TextSpan(
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                          ),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    'Perhatikan makanan untuk mempercepat perkembangan janin, makanan yang baik untuk janin meliputi sayur, buah, telur, daging, susu dan biji - bijian. Makanan seperti ini kaya asam folat, vitamin, mineral, zat besi, omega-3, serat, protein, dan kolin. Selain dapat menjaga tumbuh kembang janin, makanan yang baik untuk janin ini bisa menjaga ibu dari masalah gizi buruk.'),
                                          ],
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }));
  }
}

class SlideRightRoute extends PageRouteBuilder {
  SlideRightRoute()
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              Pantau(),
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1, 0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}

class SlideLeftRoute extends PageRouteBuilder {
  SlideLeftRoute()
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              Pantau(),
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(-1, 0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}
