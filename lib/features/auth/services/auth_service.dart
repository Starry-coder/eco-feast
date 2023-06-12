import 'dart:convert';

import 'package:eco_feast_2/constants/error_handling.dart';
import 'package:eco_feast_2/constants/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';



// ignore: unused_import
import '../../../constants/utils.dart';
import '../../../models/user.dart';
import 'package:http/http.dart' as http;

final logger = Logger();





class AuthService {
  //sign up user
  void signUpUser({
    required BuildContext context,
    required String name,
    required String email,
    required String password,
    //required String repassword,
  }) async {
    try {
      User user = User(
        id: '',
        name: name,
        email: email,
        password: password,
        type: '',
        token: '',
      );
      http.Response res = await http.post(Uri.parse('$uri/api/signup'),
       body: user.toJson(),
       headers: <String,String>{
        'Content-Type': 'application/json; charset=UTF-8',
       },
      );

      
      httpErrorHandle(
        response: res, 
        context: context, 
        onSuccess: () {
          showSnackBar(
              context, 
              'Account Created, Login with the same credentials');

      });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }


void signInUser({
    required BuildContext context,
    required String email,
    required String password,
    //required String repassword,
  }) async {
    try {
      
      http.Response res = await http.post(Uri.parse('$uri/api/signin'),
       body: jsonEncode({
        'email': email,
        'password': password,
       }),
       headers: <String,String>{
        'Content-Type': 'application/json; charset=UTF-8',
       },
      );
      print(res.body);
      // ignore: use_build_context_synchronously
      httpErrorHandle(
        response: res, 
        context: context, 
        onSuccess: ()  {

              });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

}
