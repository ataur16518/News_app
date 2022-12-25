import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:news_api_project1/profile.dart';

import 'catagaric_page/catagaric.dart';
import 'color.dart';
import 'home_screen.dart';
import 'notification.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  List<Widget>_screenList =[
    HomePage(),
    CatagaricPage(),
    NotificationPage(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: titelcolor,
        unselectedItemColor: subtitelcolor,
        backgroundColor: hnn,
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(IconlyLight.home),label: '',backgroundColor: Colors.blueGrey),
          BottomNavigationBarItem(icon: Icon(IconlyLight.category),label: '',backgroundColor: Colors.pink),
          BottomNavigationBarItem(icon: Icon(IconlyLight.notification),label: '',backgroundColor: Colors.purple),
          BottomNavigationBarItem(icon: Icon(IconlyLight.profile),label: '',backgroundColor: Color(0xffC3530D)),
        ],),
      body: Center(child: _screenList.elementAt(selectedIndex)),
    );
  }
}
