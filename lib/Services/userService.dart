// ignore_for_file: file_names, missing_return, camel_case_types

import 'package:demo_sprints/Model/User.dart';
import 'package:dio/dio.dart';

class userService{

  String baseUrl ="https://jsonplaceholder.typicode.com";
  String usersLink = "/users";

  Future<List<User>> getUsers() async {
    List<User> usersList = [];
    Response response = await Dio().get('$baseUrl$usersLink');
    var data = response.data;

    data.forEach((element){
      User myUser = User.fromJson(element);
      usersList.add(myUser);
    });
    return usersList;
  }

}