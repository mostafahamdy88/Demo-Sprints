// ignore_for_file: file_names, prefer_const_constructors

import 'package:demo_sprints/Model/User.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final User data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("User Details"),
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              
              title: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.grey[300],
                        padding: const EdgeInsets.all(10),

                        child: Text(
                          "#ID: ${data.id}\n\n#Name: ${data.name}\n\n#Username: ${data.username}\n\n#Email: ${data.email}\n\n#Phone: ${data.phone}\n\n#City: ${data.address.city}\n\n#Suite: ${data.address.suite}\n\n#Street: ${data.address.street}\n\n#Zipcode: ${data.address.zipcode}\n\n#Geo: ${data.address.geo}\n\n#Website: ${data.website}\n\n#Company Name: ${data.company.name}\n\n#Company CatchPhrase: ${data.company.catchPhrase}\n\n#Company bs: ${data.company.bs}",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,

                          ),
                        ),
                      ),
                    ],
                  )),
            );
          }),
    );
  }
}
