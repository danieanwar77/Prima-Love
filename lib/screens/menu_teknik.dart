import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'music_player_first.dart';
import 'music_player_second.dart';
import 'video_player.dart';
import 'menu_faktor.dart';
import 'menu_pantau.dart';
import 'home.dart';

class Teknik extends StatefulWidget {
  @override
  TeknikState createState() => TeknikState();
}

class TeknikState extends State<Teknik> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
    _tabController.addListener(stopMusic);
  }

  void stopMusic() {
    if (_tabController.indexIsChanging) {
      FirstMusicState().coreStop();
    }
  }

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
                                              'Teknik stimulasi',
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
                                          'assets/contents/content2.png'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 13,
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
                                                    'Bentuk persiapan untuk melahirkan yang tak boleh bunda lewatkan adalah '),
                                            TextSpan(
                                                text: 'memberikan stimulasi',
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            TextSpan(
                                                text:
                                                    ' yang cukup untuk si Kecil sejak dalam kandungan. Dalam hal ini, rangsangan yang bisa bunda berikan adalah sebagai berikut :'),
                                          ],
                                        ),
                                      )),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    child: Material(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      color: Color(0xffFFC7C7),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, '/teknikMusik');
                                        },
                                        customBorder: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 8),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('1. Stimulasi Musik',
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Icon(Icons.arrow_right_rounded)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    child: Material(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      color: Color(0xffFFC7C7),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, '/teknikVideo');
                                        },
                                        customBorder: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 8),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                  '2. Stimulasi Membelai dan mengobrol',
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Icon(Icons.arrow_right_rounded)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    child: Material(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      color: Color(0xffFFC7C7),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, '/teknikOlahraga');
                                        },
                                        customBorder: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 8),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('3. Stimulasi Berolahraga',
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Icon(Icons.arrow_right_rounded)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
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
              Faktor(),
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

class MusicTab extends StatefulWidget {
  const MusicTab({super.key});

  @override
  State<MusicTab> createState() => _MusicTabState();
}

class _MusicTabState extends State<MusicTab>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 24),
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
                  child: Text('Memperdengarkan Janin dengan Suara Musik Klasik',
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
              style: TextStyle(fontFamily: 'Poppins', fontSize: 13),
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
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class VideoTab extends StatefulWidget {
  const VideoTab({super.key});

  @override
  State<VideoTab> createState() => _VideoTabState();
}

class _VideoTabState extends State<VideoTab>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('2.',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                Expanded(
                  child: Text('Membelai dan Mengobrol',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Janin sudah bisa merasakan gerakan diluar rahim pada usia kehamilan 24 minggu, stimulasi ini misalnya mengusap perut, janin akan merespons stimulasi dengan menyentuh dinding rahim sehingga terasa gerakan janin, mengubah posisi serta menendang atau mendorong tubuhnya ke belakang. pada video dibawah ini merupakan contoh stimulasi membelai dan mengobrol :',
              style: TextStyle(fontFamily: 'Poppins', fontSize: 13),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 32,
            ),
            Container(height: 400, child: Video())
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
