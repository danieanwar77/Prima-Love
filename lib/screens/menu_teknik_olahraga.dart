import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'music_player_first.dart';
import 'music_player_second.dart';
import 'video_player.dart';
import 'menu_faktor.dart';
import 'menu_pantau.dart';
import 'home.dart';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';

class TeknikOlahraga extends StatefulWidget {
  @override
  TeknikOlahragaState createState() => TeknikOlahragaState();
}

class TeknikOlahragaState extends State<TeknikOlahraga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFC7C7),
        body: LayoutBuilder(builder: (context, constraint) {
          return SafeArea(
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 24,
                                    ),
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.popAndPushNamed(
                                                context, '/teknik');
                                          },
                                          child: Icon(
                                            Icons.arrow_back_ios_new,
                                            size: 24.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: const Text(
                                            'Teknik stimulasi berolahraga',
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
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('3.',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                    Expanded(
                                      child: Text('Berolahraga',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Berolahraga secara rutin bisa merangsang perkembangan otak janin. Olahraga yang bisa dilakukan diantaranya berjalan santai selama 30 – 60 menit, berenang 20 – 30 menit dalam 1 – 2 kali seminggu, senam hamil. Lakukan kegiatan olahraga setelah berkonsultasi dengan bidan atau dokter sebelumnya.',
                                  style: TextStyle(
                                      fontFamily: 'Poppins', fontSize: 13),
                                  textAlign: TextAlign.justify,
                                ),
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
          );
        }));
  }
}
