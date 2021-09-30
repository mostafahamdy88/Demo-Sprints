// ignore_for_file: file_names

import 'package:demo_sprints/Model/User.dart';
import 'package:demo_sprints/Screens/userDetails.dart';
import 'package:demo_sprints/Services/userService.dart';
import 'package:flutter/material.dart';

class userScreen extends StatefulWidget {
  @override
  _userScreenState createState() => _userScreenState();
}

class _userScreenState extends State<userScreen> {
  @override
  List<User> usersList = [];
  bool isLoading = true;

  getUserList() async {
    usersList = await userService().getUsers();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getUserList();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: usersList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("${usersList[index].name}",
                    style: const TextStyle(
                      color: Colors.blue,
                            fontSize: 22,
                    ),
                    ),
                  ),
                  trailing: const Icon(
                    Icons.people,
                    color: Colors.blue
                    ),
                  enabled: true,
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserDetails(),
                            settings: RouteSettings(
                              arguments: usersList[index],
                            )))
                  },
                );
              },
            ),
    );
  }
}
