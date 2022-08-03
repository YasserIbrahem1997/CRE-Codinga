
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomTapBar extends StatefulWidget {
  const BottomTapBar({Key? key}) : super(key: key);

  @override
  State<BottomTapBar> createState() => _BottomTapBarState();
}

class _BottomTapBarState extends State<BottomTapBar> {
  List _widgetOptions = [
    Container(child: Center(child: Text("yasser")),),
    Container(child: Center(child: Text("yasser 1")),),
    Container(child: Center(child: Text("yasser 2")),),
    Container(child: Center(child: Text("yasser 4")),),
    Container(child: Center(child: Text("yasser 5")),),
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
      bottomNavigationBar: bottomNavigationBar(),
    );
  }
  Widget bottomNavigationBar() {

    return Container(

      height: 75,

      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Fixed
        backgroundColor: Color(0xff010031), // <-- This works for fixed
        items: [
          BottomNavigationBarItem(

            activeIcon: InkWell(onTap: (){

            },
              child: Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: Text("Home",style: TextStyle(fontSize: 13,color: Colors.white),),
              ),
            ),
            label: "",
            icon : Icon(Icons.home,size: 20, color: Colors.white,),

          ),
          BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: Text("Chat",style: TextStyle(fontSize: 13,color: Colors.white),),
              ),
              label: "",
            icon : Icon(Icons.chat,size: 20, color: Colors.white),
          ),
          BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: Text("Email",style: TextStyle(fontSize: 13,color: Colors.white),),
              ),
              label: "",
            icon : Icon(Icons.email,size: 20, color: Colors.white),
          ),
          BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: Text("Notification",style: TextStyle(fontSize: 13,color: Colors.white),),
              ),
              label: "",
            icon : Icon(Icons.notifications_active,size: 20,   color: Colors.white),
          ),
          BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: Text("Profail",style: TextStyle(fontSize: 13,color: Colors.white),),
              ),
              label: "",
            icon : Icon(Icons.person,size: 20, color: Colors.white),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

