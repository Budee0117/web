import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:myflutter/main.dart';
import 'package:myflutter/pages/Settings.dart';
import 'package:myflutter/pages/favorite.dart';
import 'package:myflutter/pages/header.dart';
import 'package:myflutter/pages/profile.dart';

import 'login.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key, required this.title, required String storedEmail});
  final String title;

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 40, 40, 40),
              child: Column(
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("image/1.png"),
                      fit: BoxFit.cover,
                    )),
                    child: Image.asset("image/t2.png"),
                  ),
                  // const Expanded(child: TextField()),
                  ListTile(
                    onTap: () {},
                    horizontalTitleGap: 0.0,
                    title: const Text('Home'),
                    textColor: Colors.white,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FavoritePage(),
                          ));
                    },
                    horizontalTitleGap: 0.0,
                    title: const Text('Favorite'),
                    textColor: Colors.white,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SettingsPage(),
                          ));
                    },
                    horizontalTitleGap: 0.0,
                    title: const Text('Setting'),
                    textColor: Colors.white,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfilePage(),
                          ));
                    },
                    horizontalTitleGap: 0.0,
                    title: const Text('Profile'),
                    textColor: Colors.white,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ));
                    },
                    horizontalTitleGap: 0.0,
                    title: const Text('Log out'),
                    textColor: Colors.white,
                  )
                ],
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: Container(
                color: const Color.fromARGB(255, 64, 64, 64),
                  child: Header(
                storedEmail: '',
                title: '',
              )
              )
              )
        ],
      ),
    ));
  }
}

// ignore: camel_case_types, unused_element
class _onItemTapped {
  _onItemTapped(int i);
}












      // const Stack(
        // children: [
          // CarouselSlider(
          //   options: CarouselOptions(
          //     height: 200,
          //     enlargeCenterPage: true,
          //     autoPlay: true,
          //     aspectRatio: 16 / 9,
          //     autoPlayCurve: Curves.fastLinearToSlowEaseIn,
          //     enableInfiniteScroll: true,
          //     autoPlayAnimat ionDuration: const Duration(milliseconds: 800),
          //     viewportFraction: 0.8,
          //   ),
          //   items:  [
          //     ElevatedButton(
          //         onPressed: () {
          //           navigator?.pop(context);
          //         },
          //         child: Container(
          //           margin: const EdgeInsets.all(5.0),
          //           decoration: BoxDecoration(
          //               color: Colors.white,
          //               borderRadius: BorderRadius.circular(20),
          //               border: Border.all(
          //                   color: Colors.black,
          //                   width: 0.2,
          //                   style: BorderStyle.solid),
          //               image: const DecorationImage(
          //                   image: AssetImage('image/t4.png')
          //                   )
          //                   ),
          //         )
          //         ),
          //     Container(
          //       margin: const EdgeInsets.all(5.0),
          //       decoration: BoxDecoration(
          //           color: Colors.white,
          //           borderRadius: BorderRadius.circular(20.0),
          //           border: Border.all(
          //               color: Colors.black,
          //               width: 0.2,
          //               style: BorderStyle.solid),
          //           image: const DecorationImage(
          //               image: AssetImage('image/t2.png'))),
          //     ),
          //     Container(
          //       margin: const EdgeInsets.all(5.0),
          //       decoration: BoxDecoration(
          //           color: Colors.white,
          //           borderRadius: BorderRadius.circular(20.0),
          //           border: Border.all(
          //               color: Colors.black,
          //               width: 0.2,
          //               style: BorderStyle.solid),
          //           image: const DecorationImage(
          //               image: AssetImage('image/t3.png'))),w
          //     ),
          //   ],
          // )
        // ],
      // ),