import 'dart:async';
import 'package:flutter/material.dart';
import 'menu_teknik.dart';
import 'menu_manfaat.dart';
import 'home.dart';

class Faktor extends StatelessWidget {
  const Faktor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFC7C7),
        body: LayoutBuilder(builder: (context, constraint) {
          return GestureDetector(
            onHorizontalDragUpdate: (details) {
              if (details.delta.dx < -8) {
                Navigator.push(context, SlideRightRoute());
              } else if (details.delta.dx > 8) {
                Navigator.push(context, SlideLeftRoute());
              }
            },
            child: SafeArea(
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
                                              'Faktor & tanda bahaya kehamilan',
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
                                          'assets/contents/content5.png'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 13,
                                  ),
                                  Container(
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          RichText(
                                            textAlign: TextAlign.justify,
                                            text: TextSpan(
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'Poppins',
                                                color: Colors.black,
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text:
                                                        'Faktor – Faktor Yang Mempengaruhi Perkembangan Prenatal',
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    )),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('1.',
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Expanded(
                                                child: Text(' Gizi ibu',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Text(
                                              'Janin mendapatkan makanan dari aliran darah ibu yang berasal dari plasenta. Untuk mendapatkan makanan yang sehat bagi janin agar dapat berkembang dengan baik, maka ibu harus mengonsumsi makanan yang cukup protein, lemak, dan karbohidrat serta zat gizi lain yang harus dikonsumsi dari berbagai jenis makanan.',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontFamily: 'Poppins')),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('2.',
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Expanded(
                                                child: Text(
                                                    ' Kekurangan Vitamin',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Text(
                                              'Kekurangan beberapa vitamin terutama vitamin C, B6, B13, D, E, K, zat besi akan mengganggu pola normal perkembangan janin.',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontFamily: 'Poppins')),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('3.',
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Expanded(
                                                child: Text(' Kesehatan Ibu',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Text(
                                              'Ibu yang memiliki riwayat penyakit misalnya rubela, penyakit kelamin, toksoplasmosis, herpes, AIDS, ataupun penyakit kronis lainnya tentunya akan mengganggu perkembangan normal janin. Sehingga kesehatan ibu harus dijaga supaya tetap sehat dalam berbagai kondisi.',
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontFamily: 'Poppins',
                                              )),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          RichText(
                                            textAlign: TextAlign.justify,
                                            text: TextSpan(
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'Poppins',
                                                color: Colors.black,
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text:
                                                        'Tanda Bahaya Kehamilan',
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0),
                                                child: Text('\u2022',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ),
                                              Expanded(
                                                child: Text(
                                                    'Pendarahan dari vagina.',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontFamily: 'Poppins')),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0),
                                                child: Text('\u2022',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ),
                                              Expanded(
                                                child: Text(
                                                    'Mual dan muntah terus menerus.',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontFamily: 'Poppins')),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0),
                                                child: Text('\u2022',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ),
                                              Expanded(
                                                child: Text(
                                                    'Janin kurang aktif bergerak.',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontFamily: 'Poppins')),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0),
                                                child: Text('\u2022',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ),
                                              Expanded(
                                                child: Text(
                                                    'Bengkak – bengkak di beberapa bagian tubuh.',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontFamily: 'Poppins')),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0),
                                                child: Text('\u2022',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ),
                                              Expanded(
                                                child: Text(
                                                    'Air ketuban pecah sebelum waktunya.',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontFamily: 'Poppins')),
                                              ),
                                            ],
                                          ),
                                        ],
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
              Teknik(),
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
              Manfaat(),
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
