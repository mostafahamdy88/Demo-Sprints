// ignore_for_file: file_names

import 'package:demo_sprints/Model/User.dart';
import 'package:demo_sprints/Screens/userDetails.dart';
import 'package:demo_sprints/Services/userService.dart';
import 'package:flutter/material.dart';

class usersGrid extends StatefulWidget {
  @override
  _usersGridState createState() => _usersGridState();
}

class _usersGridState extends State<usersGrid> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: usersList.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              userDetails(user: usersList[index])),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.people,
                                color: Colors.blue,
                                size: 45,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "${usersList[index].name}",
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
