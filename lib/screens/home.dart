import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'menu.dart';
import 'info.dart';
import 'source.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        backgroundColor: Color(0xffFFC7C7),
        body: SafeArea(
          child: Builder(
            builder: (context) {
              switch (_selectedIndex) {
                case 0:
                  return Menu();
                case 1:
                  return Info();
                case 2:
                  return Source();
                default:
                  return Menu();
              }
            },
          ),
        ),
        // Navigator(
        //   onGenerateRoute: (settings) {
        //     // if (settings.name == 'page2') page = Page2();
        //     switch (_selectedIndex) {
        //       case 0:
        //         return MaterialPageRoute(builder: (_) => Menu());
        //       case 1:
        //         return MaterialPageRoute(builder: (_) => Info());
        //       case 2:
        //         return MaterialPageRoute(builder: (_) => Source());
        //       default:
        //         return MaterialPageRoute(builder: (_) => Menu());
        //     }
        //   },
        // ),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline),
                label: 'Info',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'Sumber',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Color.fromARGB(255, 255, 171, 171),
            onTap: _onItemTapped),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            const url =
                "https://wa.me/6282126110858?text=Prima%20Love,%20saya%20ingin%20Konsultasi";
            var urllaunchable = await canLaunchUrl(
                Uri.parse(url)); //canLaunch is from url_launcher package
            if (urllaunchable) {
              await launchUrl(Uri.parse(url),
                  mode: LaunchMode
                      .externalApplication); //launch is from url_launcher package to launch URL
            } else {
              throw "URL can't be launched.";
            }
          },
          tooltip: 'Increment',
          backgroundColor: Color(0xffFFE2E2),
          child: Image.asset(
            'assets/icons/iconWhatsapp.png',
            height: 36,
          ),
        ),
      ),
    );
  }
}

// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: <Widget>[
//           Padding(
//             padding:
//                 const EdgeInsets.only(top: 80, left: 24, right: 24, bottom: 26),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       'Selamat datang,',
//                       style: TextStyle(
//                           fontFamily: 'Poppins',
//                           fontSize: 20,
//                           fontWeight: FontWeight.w700),
//                     ),
//                     const Text(
//                       'Informasi apa yang bunda butuhkan?,',
//                       style: TextStyle(
//                         fontFamily: 'Poppins',
//                       ),
//                     )
//                   ],
//                 ),
//                 Image.asset(
//                   'assets/icons/iconMenu.png',
//                   height: 54,
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Container(
//               height: double.infinity,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(20.0),
//                     topRight: Radius.circular(20.0)),
//                 color: Color(0xffF6F6F6),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Column(
//                         children: [
//                           Container(
//                             width: double.infinity,
//                             decoration: BoxDecoration(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(10)),
//                               color: Color(0xffFFE2E2),
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.all(10.0),
//                               child: Container(
//                                 width: double.infinity,
//                                 child: Column(
//                                   children: [
//                                     Image.asset(
//                                       'assets/icons/iconMenu1.png',
//                                       height: 82,
//                                     ),
//                                     const Text(
//                                       'Stimulasi prenatal pada perkembangan janin',
//                                       style: TextStyle(
//                                           fontFamily: 'Poppins',
//                                           fontWeight: FontWeight.w600),
//                                       textAlign: TextAlign.center,
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Container(
//                             width: double.infinity,
//                             decoration: BoxDecoration(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(10)),
//                               color: Color(0xffFFE2E2),
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.all(10.0),
//                               child: Container(
//                                 width: double.infinity,
//                                 child: Column(
//                                   children: [
//                                     Image.asset(
//                                       'assets/icons/iconMenu3.png',
//                                       height: 82,
//                                     ),
//                                     const Text(
//                                       'Manfaat & Tujuan',
//                                       style: TextStyle(
//                                           fontFamily: 'Poppins',
//                                           fontWeight: FontWeight.w600),
//                                       textAlign: TextAlign.center,
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Container(
//                             width: double.infinity,
//                             decoration: BoxDecoration(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(10)),
//                               color: Color(0xffFFE2E2),
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.all(10.0),
//                               child: Container(
//                                 width: double.infinity,
//                                 child: Column(
//                                   children: [
//                                     Image.asset(
//                                       'assets/icons/iconMenu5.png',
//                                       height: 82,
//                                     ),
//                                     const Text(
//                                       'Faktor & Tanda bahaya kehamilan',
//                                       style: TextStyle(
//                                           fontFamily: 'Poppins',
//                                           fontWeight: FontWeight.w600),
//                                       textAlign: TextAlign.center,
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Expanded(
//                       child: Column(
//                         children: [
//                           Container(
//                             width: double.infinity,
//                             decoration: BoxDecoration(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(10)),
//                               color: Color(0xffFFE2E2),
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.all(10.0),
//                               child: Container(
//                                 width: double.infinity,
//                                 child: Column(
//                                   children: [
//                                     Image.asset(
//                                       'assets/icons/iconMenu2.png',
//                                       height: 82,
//                                     ),
//                                     const Text(
//                                       'Teknik stimulasi',
//                                       style: TextStyle(
//                                           fontFamily: 'Poppins',
//                                           fontWeight: FontWeight.w600),
//                                       textAlign: TextAlign.center,
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Container(
//                             width: double.infinity,
//                             decoration: BoxDecoration(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(10)),
//                               color: Color(0xffFFE2E2),
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.all(10.0),
//                               child: Container(
//                                 width: double.infinity,
//                                 child: Column(
//                                   children: [
//                                     Image.asset(
//                                       'assets/icons/iconMenu4.png',
//                                       height: 82,
//                                     ),
//                                     const Text(
//                                       'Waktu stimulasi',
//                                       style: TextStyle(
//                                           fontFamily: 'Poppins',
//                                           fontWeight: FontWeight.w600),
//                                       textAlign: TextAlign.center,
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Container(
//                             width: double.infinity,
//                             decoration: BoxDecoration(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(10)),
//                               color: Color(0xffFFE2E2),
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.all(10.0),
//                               child: Container(
//                                 width: double.infinity,
//                                 child: Column(
//                                   children: [
//                                     Image.asset(
//                                       'assets/icons/iconMenu6.png',
//                                       height: 82,
//                                     ),
//                                     const Text(
//                                       'Pantau buah hati',
//                                       style: TextStyle(
//                                           fontFamily: 'Poppins',
//                                           fontWeight: FontWeight.w600),
//                                       textAlign: TextAlign.center,
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           )
//         ],
//       )
//     );
//   }
// }
