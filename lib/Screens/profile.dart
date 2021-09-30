import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: const [
          Center(
            child: Text(
              "Welcome To Profile Page",
              style: TextStyle(fontSize: 30, color: Colors.blue),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      )),
    );
  }
}