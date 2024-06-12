






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




