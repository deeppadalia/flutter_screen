import 'package:flutter/material.dart';

import 'card.dart';
import 'home_screen.dart';
import 'login.dart';
import 'welcome_screen.dart';

class BottomNavigation extends StatefulWidget {


  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int index = 0;
  List<Widget> pages =[
    HomeScreen(),
    Callhistory(),
    Welcomescreen(),
    LoginPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        currentIndex: index,
        showUnselectedLabels: true,
        iconSize: 32,
        selectedItemColor: Colors.deepPurple,
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 18,
        onTap: (int currentidx){
            setState(() {
              index = currentidx;
            });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label : 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.assignment),label : 'Courses'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label : 'Account'),
        ],
      ),
    );
  }
}
