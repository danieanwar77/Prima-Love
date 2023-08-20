import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'video_player.dart';
import 'menu_faktor.dart';
import 'menu_pantau.dart';
import 'home.dart';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';

class TeknikMusik extends StatefulWidget {
  @override
  TeknikMusikState createState() => TeknikMusikState();
}

class TeknikMusikState extends State<TeknikMusik> {
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
                                            'Teknik stimulasi musik',
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('1. ',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                    Expanded(
                                      child: Text(
                                          'Memperdengarkan Janin dengan Suara Musik Klasik',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Memperdengarkan musik klasik pada janin selama masa kehamilan dapat memberikan pengaruh positif pada perkembangan janin dalam kandungan, antara lain mampu menstimulasi otak bayi dan membantunya tumbuh cerdas kelak. contoh musik klasik untuk stimulasi yang dapat diberikan beberapa adalah sebagai berikut :',
                                  style: TextStyle(
                                      fontFamily: 'Poppins', fontSize: 13),
                                  textAlign: TextAlign.justify,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Musik stimulasi 1',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(height: 180, child: FirstMusic()),
                                // SizedBox(
                                //   height: 10,
                                // ),
                                Text(
                                  'Musik stimulasi 2',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(height: 180, child: SecondMusic())
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

class FirstMusic extends StatefulWidget {
  FirstMusic({super.key});

  final FirstMusicState firstMusicState = new FirstMusicState();

  @override
  FirstMusicState createState() => FirstMusicState();
  void stopFirstPlayer() {
    firstMusicState.stopFirstPlayer();
  }
}

class FirstMusicState extends State<FirstMusic> {
  int maxduration = 100;
  int currentpos = 0;
  String currentpostlabel = "00:00";
  String audioasset = "assets/audio/musik1.mp3";
  bool isplaying = false;
  bool audioplayed = false;
  late Uint8List audiobytes;

  AudioPlayer player = AudioPlayer();

  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      ByteData bytes =
          await rootBundle.load(audioasset); //load audio from assets
      audiobytes =
          bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
      //convert ByteData to Uint8List

      player.onDurationChanged.listen((Duration d) {
        //get the duration of audio
        maxduration = d.inMilliseconds;
        setState(() {});
      });

      player.onAudioPositionChanged.listen((Duration p) {
        currentpos =
            p.inMilliseconds; //get the current position of playing audio

        //generating the duration label
        int shours = Duration(milliseconds: currentpos).inHours;
        int sminutes = Duration(milliseconds: currentpos).inMinutes;
        int sseconds = Duration(milliseconds: currentpos).inSeconds;

        int rhours = shours;
        int rminutes = sminutes - (shours * 60);
        int rseconds = sseconds - (sminutes * 60 + shours * 60 * 60);

        currentpostlabel = "$rhours:$rminutes:$rseconds";

        setState(() {
          //refresh the UI
        });
      });
    });
    super.initState();
  }

  void coreStop() {
    setState(() {
      isplaying = false;
      audioplayed = false;
      currentpos = 0;
    });
  }

  void stopFirstPlayer() async {
    int result = await player.stop();
    if (result == 1) {
      coreStop();
    } else {
      print("Error on stop audio.");
    }
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF6F6F6),
        body: Container(
          height: 180,
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Container(
                child: Text(
                  currentpostlabel,
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Container(
                  child: Slider(
                value: double.parse(currentpos.toString()),
                min: 0,
                max: double.parse(maxduration.toString()),
                divisions: maxduration,
                label: currentpostlabel,
                onChanged: (double value) async {
                  int seekval = value.round();
                  int result =
                      await player.seek(Duration(milliseconds: seekval));
                  if (result == 1) {
                    //seek successful
                    currentpos = seekval;
                  } else {
                    print("Seek unsuccessful.");
                  }
                },
              )),
              Container(
                child: Wrap(
                  spacing: 10,
                  children: [
                    ElevatedButton.icon(
                        onPressed: () async {
                          if (!isplaying && !audioplayed) {
                            int result = await player.playBytes(audiobytes);
                            if (result == 1) {
                              //play success
                              setState(() {
                                isplaying = true;
                                audioplayed = true;
                              });
                            } else {
                              print("Error while playing audio.");
                            }
                          } else if (audioplayed && !isplaying) {
                            int result = await player.resume();
                            if (result == 1) {
                              //resume success
                              setState(() {
                                isplaying = true;
                                audioplayed = true;
                              });
                            } else {
                              print("Error on resume audio.");
                            }
                          } else {
                            int result = await player.pause();
                            if (result == 1) {
                              //pause success
                              setState(() {
                                isplaying = false;
                              });
                            } else {
                              print("Error on pause audio.");
                            }
                          }
                        },
                        icon: Icon(isplaying ? Icons.pause : Icons.play_arrow),
                        label: Text(isplaying ? "Pause" : "Play")),
                    ElevatedButton.icon(
                        onPressed: () {
                          stopFirstPlayer();
                        },
                        icon: Icon(Icons.stop),
                        label: Text("Stop")),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class SecondMusic extends StatefulWidget {
  const SecondMusic({super.key});

  @override
  State<SecondMusic> createState() => _SecondMusicState();
}

class _SecondMusicState extends State<SecondMusic> {
  int maxduration = 100;
  int currentpos = 0;
  String currentpostlabel = "00:00";
  String audioasset = "assets/audio/musik2.mp3";
  bool isplaying = false;
  bool audioplayed = false;
  late Uint8List audiobytes;

  AudioPlayer player = AudioPlayer();

  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      ByteData bytes =
          await rootBundle.load(audioasset); //load audio from assets
      audiobytes =
          bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
      //convert ByteData to Uint8List

      player.onDurationChanged.listen((Duration d) {
        //get the duration of audio
        maxduration = d.inMilliseconds;
        setState(() {});
      });

      player.onAudioPositionChanged.listen((Duration p) {
        currentpos =
            p.inMilliseconds; //get the current position of playing audio

        //generating the duration label
        int shours = Duration(milliseconds: currentpos).inHours;
        int sminutes = Duration(milliseconds: currentpos).inMinutes;
        int sseconds = Duration(milliseconds: currentpos).inSeconds;

        int rhours = shours;
        int rminutes = sminutes - (shours * 60);
        int rseconds = sseconds - (sminutes * 60 + shours * 60 * 60);

        currentpostlabel = "$rhours:$rminutes:$rseconds";

        setState(() {
          //refresh the UI
        });
      });
    });
    super.initState();
  }

  void stopSecondPlayer() async {
    int result = await player.stop();
    if (result == 1) {
      //stop success
      setState(() {
        isplaying = false;
        audioplayed = false;
        currentpos = 0;
      });
    } else {
      print("Error on stop audio.");
    }
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF6F6F6),
        body: Container(
          height: 180,
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Container(
                child: Text(
                  currentpostlabel,
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Container(
                  child: Slider(
                value: double.parse(currentpos.toString()),
                min: 0,
                max: double.parse(maxduration.toString()),
                divisions: maxduration,
                label: currentpostlabel,
                onChanged: (double value) async {
                  int seekval = value.round();
                  int result =
                      await player.seek(Duration(milliseconds: seekval));
                  if (result == 1) {
                    //seek successful
                    currentpos = seekval;
                  } else {
                    print("Seek unsuccessful.");
                  }
                },
              )),
              Container(
                child: Wrap(
                  spacing: 10,
                  children: [
                    ElevatedButton.icon(
                        onPressed: () async {
                          if (!isplaying && !audioplayed) {
                            int result = await player.playBytes(audiobytes);
                            if (result == 1) {
                              //play success
                              setState(() {
                                isplaying = true;
                                audioplayed = true;
                              });
                            } else {
                              print("Error while playing audio.");
                            }
                          } else if (audioplayed && !isplaying) {
                            int result = await player.resume();
                            if (result == 1) {
                              //resume success
                              setState(() {
                                isplaying = true;
                                audioplayed = true;
                              });
                            } else {
                              print("Error on resume audio.");
                            }
                          } else {
                            int result = await player.pause();
                            if (result == 1) {
                              //pause success
                              setState(() {
                                isplaying = false;
                              });
                            } else {
                              print("Error on pause audio.");
                            }
                          }
                        },
                        icon: Icon(isplaying ? Icons.pause : Icons.play_arrow),
                        label: Text(isplaying ? "Pause" : "Play")),
                    ElevatedButton.icon(
                        onPressed: () {
                          stopSecondPlayer();
                        },
                        icon: Icon(Icons.stop),
                        label: Text("Stop")),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
