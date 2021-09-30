// ignore_for_file: file_names, prefer_const_constructors

import 'package:demo_sprints/utils.dart';
import 'package:flutter/material.dart';
import 'package:demo_sprints/Model/User.dart';

class userDetails extends StatefulWidget {
  User user;
  userDetails({this.user});

  @override
  _userDetailsState createState() => _userDetailsState();
}

class _userDetailsState extends State<userDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("User Details"),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "#ID: ${widget.user.id}",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "#Name: ${widget.user.name}",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "#Username: ${widget.user.username}",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  launchURL(
                      "mailto:${widget.user.email}?subject=newSubject&body=newEmail");
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    "#Email: ${widget.user.email}",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  launchURL("tel:${widget.user.phone}");
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    "#Phone: ${widget.user.phone}",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "#City: ${widget.user.address.city}",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "#Suite: ${widget.user.address.suite}",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "#Street: ${widget.user.address.street}",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "#Zipcode: ${widget.user.address.zipcode}",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "#Geo: ${widget.user.address.geo}",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "#Website: ${widget.user.website}",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "#Company Name: ${widget.user.company.name}",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "#Company CatchPhrase: ${widget.user.company.catchPhrase}",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "#Company bs: ${widget.user.company.bs}",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
