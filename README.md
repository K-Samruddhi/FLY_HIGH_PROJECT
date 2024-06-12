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

In this code first I imported all the pages I want to route it and also the material page to design everything.
Next main function is started next all the routes are started routs are nothing but from first page we have to go to which page nothing but the navigations of the page.
void main(): The main function serves as the entry point for the Flutter application.
runApp(MaterialApp(...)): Initializes the Flutter application with the MaterialApp widget.
debugShowCheckedModeBanner: false: Disables the debug banner that appears in the top-right corner during development.
initialRoute: 'login': Sets the initial route of the application to the login page.
routes: Defines the routes for the application. The keys are the route names, and the values are the corresponding widget constructors.
'login': (context) => MyLogin(): Maps the 'login' route to the MyLogin widget.
'welcome': (context) => MyWelcome(): Maps the 'welcome' route to the MyWelcome widget.
Routes
In this setup, the application starts at the login page (MyLogin). After a successful login, the user is navigated to the welcome page (MyWelcome). The routes map is used to define the available routes in the application, which are essentially the different screens/pages the user can navigate to.

MyLogin and MyWelcome Widgets
These widgets are defined in their respective files (log in.dart, register.dart, and welcome.dart). Each file should contain the implementation of the respective widget classes (MyLogin, MyRegister, and MyWelcome). Ensure these classes extend StatelessWidget or StatefulWidget and implement the build method to return the corresponding UI.

Next page of the project is log in page which will the first app page of this app .This is the basic log in page which consist of basic information of user like name and email id.
The page is like below:
