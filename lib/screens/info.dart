import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Info extends StatelessWidget {
  const Info({super.key});

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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 24,
                                  ),
                                  Center(
                                    child: const Text(
                                      'Informasi Aplikasi',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Center(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Container(
                                      color: Color(0xffFFC7C7),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 12.0, horizontal: 18),
                                        child: Image.asset(
                                            'assets/logo/logoPrimaLove.png'),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Container(
                                    width: double.infinity,
                                    child: RichText(
                                      textAlign: TextAlign.justify,
                                      text: TextSpan(
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                                  'Aplikasi Prima Love (Prenatal Stimulation Of Fetal Development) merupakan aplikasi media pembelajaran bagi ibu hamil dalam memahami upaya stimulasi pada janin saat kondisi hamil. Aplikasi Prima Love dirancang secara sederhana dan efisien sehingga ibu hamil dan keluarga dapat dengan mudah mengakses informasi yang berkaitan dengan masa kehamilan (Prenatal). '),
                                        ],
                                      ),
                                    )),
                                SizedBox(
                                  height: 12,
                                ),
                                Container(
                                    width: double.infinity,
                                    child: RichText(
                                      textAlign: TextAlign.justify,
                                      text: TextSpan(
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                                  'Materi pembelajaran yang disajikan bersumber dari pedoman yang telah ditentukan. Dengan adanya aplikasi Prima Love diharapkan dapat berkontribusi dalam meningkatkan pengetahuan ibu hamil dalam pemanfaatan teknologi dan peningkatan kesejahteraan ibu dan janin. Prenatal Stimulation Of Fetal Development dalam bahasa Indonesia memiliki makna “Stimulasi perkembangan janin sebelum melahirkan”.'),
                                        ],
                                      ),
                                    )),
                                // SizedBox(
                                //   height: 20,
                                // ),
                                // Text('Informasi Pengembang',
                                //     style: TextStyle(
                                //         fontSize: 14,
                                //         fontFamily: 'Poppins',
                                //         fontWeight: FontWeight.bold)),
                                // SizedBox(
                                //   height: 32,
                                // ),
                                // Row(
                                //   crossAxisAlignment: CrossAxisAlignment.start,
                                //   mainAxisAlignment: MainAxisAlignment.start,
                                //   children: [
                                //     Padding(
                                //       padding: const EdgeInsets.symmetric(
                                //           horizontal: 8.0),
                                //       child: Text('\u2022',
                                //           style: TextStyle(
                                //               fontSize: 14,
                                //               fontFamily: 'Poppins',
                                //               fontWeight: FontWeight.bold)),
                                //     ),
                                //     Expanded(
                                //       child: Text(
                                //           'Aplikasi ini dirancang oleh :',
                                //           style: TextStyle(
                                //               fontSize: 12,
                                //               fontFamily: 'Poppins')),
                                //     ),
                                //   ],
                                // ),
                                // Container(
                                //   width: double.infinity,
                                //   child: Padding(
                                //     padding: const EdgeInsets.only(left: 18.0),
                                //     child: Column(
                                //       mainAxisAlignment:
                                //           MainAxisAlignment.start,
                                //       crossAxisAlignment:
                                //           CrossAxisAlignment.start,
                                //       children: [
                                //         Text('Sinta',
                                //             style: TextStyle(
                                //                 fontSize: 18,
                                //                 fontFamily: 'Poppins',
                                //                 fontWeight: FontWeight.bold)),
                                //         SizedBox(
                                //           height: 6,
                                //         ),
                                //         Text('Kontak yang dapat dihubungi :',
                                //             style: TextStyle(
                                //               fontSize: 10,
                                //               fontFamily: 'Poppins',
                                //             )),
                                //         Row(
                                //           children: [
                                //             GestureDetector(
                                //                 onTap: () async {
                                //                   var url =
                                //                       "https://wa.me/6282126110858?text=Prima%20Love,%20saya%20ingin%20Konsultasi";

                                //                   var urllaunchable =
                                //                       await canLaunchUrl(Uri.parse(
                                //                           url)); //canLaunch is from url_launcher package
                                //                   if (urllaunchable) {
                                //                     await launchUrl(
                                //                         Uri.parse(url),
                                //                         mode: LaunchMode
                                //                             .externalApplication); //launch is from url_launcher package to launch URL
                                //                   } else {
                                //                     print(
                                //                         "URL can't be launched.");
                                //                   }
                                //                 },
                                //                 child: Image.asset(
                                //                   'assets/icons/iconWhatsapp.png',
                                //                   height: 30,
                                //                 )),
                                //             SizedBox(
                                //               width: 8,
                                //             ),
                                //             GestureDetector(
                                //                 onTap: () async {
                                //                   var url =
                                //                       "https://mail.google.com/mail/?view=cm&fs=1&to=sintaparigi@gmail.com&su=Prima+Love+direct+message";

                                //                   var urllaunchable =
                                //                       await canLaunchUrl(Uri.parse(
                                //                           url)); //canLaunch is from url_launcher package
                                //                   if (urllaunchable) {
                                //                     await launchUrl(
                                //                         Uri.parse(url),
                                //                         mode: LaunchMode
                                //                             .externalApplication); //launch is from url_launcher package to launch URL
                                //                   } else {
                                //                     print(
                                //                         "URL can't be launched.");
                                //                   }
                                //                 },
                                //                 child: Image.asset(
                                //                   'assets/icons/iconGmail.png',
                                //                   height: 24,
                                //                 )),
                                //           ],
                                //         )
                                //       ],
                                //     ),
                                //   ),
                                // ),
                                // SizedBox(
                                //   height: 32,
                                // ),
                                // Row(
                                //   crossAxisAlignment: CrossAxisAlignment.start,
                                //   mainAxisAlignment: MainAxisAlignment.start,
                                //   children: [
                                //     Padding(
                                //       padding: const EdgeInsets.symmetric(
                                //           horizontal: 8.0),
                                //       child: Text('\u2022',
                                //           style: TextStyle(
                                //               fontSize: 14,
                                //               fontFamily: 'Poppins',
                                //               fontWeight: FontWeight.bold)),
                                //     ),
                                //     Expanded(
                                //       child: Text(
                                //           'dibuat dan dikembangkan oleh :',
                                //           style: TextStyle(
                                //               fontSize: 12,
                                //               fontFamily: 'Poppins')),
                                //     ),
                                //   ],
                                // ),
                                // Container(
                                //   width: double.infinity,
                                //   child: Padding(
                                //     padding: const EdgeInsets.only(left: 18.0),
                                //     child: Column(
                                //       mainAxisAlignment:
                                //           MainAxisAlignment.start,
                                //       crossAxisAlignment:
                                //           CrossAxisAlignment.start,
                                //       children: [
                                //         Text('Danie Anwar, S.Kom',
                                //             style: TextStyle(
                                //                 fontSize: 18,
                                //                 fontFamily: 'Poppins',
                                //                 fontWeight: FontWeight.bold)),
                                //         SizedBox(
                                //           height: 6,
                                //         ),
                                //         Text('Kontak yang dapat dihubungi :',
                                //             style: TextStyle(
                                //               fontSize: 10,
                                //               fontFamily: 'Poppins',
                                //             )),
                                //         Row(
                                //           children: [
                                //             GestureDetector(
                                //                 onTap: () async {
                                //                   String url =
                                //                       "https://wa.me/6289517827558?text=Permisi,%20Danie%20Anwar";

                                //                   var urllaunchable =
                                //                       await canLaunchUrl(Uri.parse(
                                //                           url)); //canLaunch is from url_launcher package
                                //                   if (urllaunchable) {
                                //                     await launchUrl(
                                //                         Uri.parse(url),
                                //                         mode: LaunchMode
                                //                             .externalApplication); //launch is from url_launcher package to launch URL
                                //                   } else {
                                //                     print(
                                //                         "URL can't be launched.");
                                //                   }
                                //                 },
                                //                 child: Image.asset(
                                //                   'assets/icons/iconWhatsapp.png',
                                //                   height: 30,
                                //                 )),
                                //             SizedBox(
                                //               width: 8,
                                //             ),
                                //             GestureDetector(
                                //                 onTap: () async {
                                //                   var url =
                                //                       "https://mail.google.com/mail/?view=cm&fs=1&to=danieanwar77@gmail.com&su=Prima+Love+direct+message";

                                //                   var urllaunchable =
                                //                       await canLaunchUrl(Uri.parse(
                                //                           url)); //canLaunch is from url_launcher package
                                //                   if (urllaunchable) {
                                //                     await launchUrl(
                                //                         Uri.parse(url),
                                //                         mode: LaunchMode
                                //                             .externalApplication); //launch is from url_launcher package to launch URL
                                //                   } else {
                                //                     print(
                                //                         "URL can't be launched.");
                                //                   }
                                //                 },
                                //                 child: Image.asset(
                                //                   'assets/icons/iconGmail.png',
                                //                   height: 24,
                                //                 )),
                                //           ],
                                //         )
                                //       ],
                                //     ),
                                //   ),
                                // )
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
