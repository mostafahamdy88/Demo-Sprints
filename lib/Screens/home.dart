import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String name, password;
  HomePage({required this.name, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(
                  Icons.home,
                  color: Colors.blue,
                  size: 40,
                ),
                Icon(
                  Icons.account_circle,
                  color: Colors.blue,
                  size: 40,
                ),
                Icon(
                  Icons.settings,
                  color: Colors.blue,
                  size: 40,
                ),
                Icon(
                  Icons.notifications,
                  color: Colors.blue,
                  size: 40,
                ),
              ],
            ),
          ),
          const Text(
            'User Info',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w900,
              color: Colors.blue,
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 80),
          ),
          Text(
            'Username: ${name}',
            style: const TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.w500,
              color: Colors.blue,
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 40),
          ),
          Text(
            'Password: ${password}',
            style: const TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.w500,
              color: Colors.blue,
            ),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(20, 200, 30, 0),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: const Size(200, 40),
                  padding: const EdgeInsets.all(15.0),
                ),
                onPressed: () {
                  Navigator.of(context).pop(context);
                },
                child: const Text(
                  'back',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )),
        ],
      )),
    );
  }
}
