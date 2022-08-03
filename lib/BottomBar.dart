import 'package:crmcodinga/screens/chat_screen.dart';
import 'package:crmcodinga/screens/email_screen.dart';
import 'package:crmcodinga/screens/home_screen.dart';
import 'package:crmcodinga/screens/notifcatin_screen.dart';
import 'package:crmcodinga/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomTapBar extends StatefulWidget {
  const BottomTapBar({Key? key}) : super(key: key);

  @override
  State<BottomTapBar> createState() => _BottomTapBarState();
}

class _BottomTapBarState extends State<BottomTapBar> {
  List _widgetOptions = [
    HomeScreen(),
    ChatScreen(),
    EmailScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height / 2 * 0.23,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // Fixed
          backgroundColor: Color(0xff010031), // <-- This works for fixed
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(

              label: "Home",
              activeIcon: Icon(
                Icons.home,
                color: Colors.orange,
              ),
              icon : Icon(Icons.home,size: 20, color: Colors.white,),

            ),
            BottomNavigationBarItem(
              label: "Chat",
              activeIcon: Icon(
                Icons.chat,
                color: Colors.orange,
              ),
              icon : Icon(Icons.chat,size: 20, color: Colors.white),
            ),
            BottomNavigationBarItem(
              label: "Email",
              activeIcon: Icon(
                Icons.email,
                color: Colors.orange,
              ),
              icon : Icon(Icons.email,size: 20, color: Colors.white),
            ),
            BottomNavigationBarItem(
              label: "Notification",
              activeIcon: Icon(
                Icons.notifications_active,
                color: Colors.orange,
              ),
              icon : Icon(Icons.notifications_active,size: 20,   color: Colors.white),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.person,
                color: Colors.orange,
              ),
              label: "Profile",
              icon : Icon(Icons.person,size: 20, color: Colors.white),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }


}
