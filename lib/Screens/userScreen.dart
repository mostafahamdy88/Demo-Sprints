// ignore_for_file: file_names, prefer_const_literals_to_create_immutables

import 'package:demo_sprints/Model/User.dart';
import 'package:demo_sprints/Screens/profile.dart';
import 'package:demo_sprints/Screens/userDetails.dart';
import 'package:demo_sprints/Screens/usersGrid.dart';
import 'package:demo_sprints/Services/userService.dart';
import 'package:flutter/material.dart';
import 'package:demo_sprints/Screens/settings.dart';

class userScreen extends StatefulWidget {
  @override
  _userScreenState createState() => _userScreenState();
}

class _userScreenState extends State<userScreen> {
  int currentIndex = 0;
  List<Widget> pages = [usersGrid(), settings(), profile()];
  void _onItemTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(0, 70),
        child: Container(
          child: Column(
            children: [
              const Padding(
                  padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Text(
                    "Users View",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ))
            ],
          ),
          decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0))),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: _onItemTap,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blue),
            label: "Home",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.blue),
            label: "Settings",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.blue),
            label: "Profile",
          )
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
