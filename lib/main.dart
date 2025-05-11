import 'package:flutter/material.dart';
import 'package:login_sign_up_ui/login.dart';
import 'package:login_sign_up_ui/register.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login' : (context) => MyLogin(),
       'register' : (context) => MyRegister(),
      },
  ));
}