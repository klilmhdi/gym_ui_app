import 'package:flutter/material.dart';
import 'package:gym_ui_app/share/themes.dart';
import '../screens/messages_screen.dart';
import '../screens/setting_screen.dart';
import 'home_screen.dart';

class Home_layout extends StatefulWidget {
  static String tag = '/DemoMWBottomNavigationScreen2';

  @override
  Home_layoutState createState() => Home_layoutState();
}

class Home_layoutState extends State<Home_layout> {
  int currentIndex = 0;
  final screen = [
    Home(),
    Profile(),
    Message()
  ];

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: screen.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: BackgroundColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        items: [
          //1
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          //2

          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
          ),
          //3
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Message',
          ),
    ],
            ),
    );
  }
}