# FLY_HIGH_PROJECT
This is basic frontend android development projects done using the language dart(flutter).
This project is done by six web pages.
First is main page which consists of routes from one page to another
The main page of app is :

import 'package:firstapp/log%20in.dart';
import 'package:firstapp/register.dart';
import 'package:firstapp/welcome.dart';
import 'package:flutter/material.dart';
void main(){
        runApp(MaterialApp(
           debugShowCheckedModeBanner: false,
          initialRoute: 'login',
          routes: {
            'login':(context)=>MyLogin(),
            'welcome':(context)=>MyWelcome(),
            },
        ));
}
