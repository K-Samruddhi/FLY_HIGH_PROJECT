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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});
 @override
  State<MyLogin> createState() => _MyLoginState();
}
class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
         image: AssetImage('assets/img_4.png'),fit: BoxFit.cover
       )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35,top: 130),
              child: Text('Welcome to\n my new app',style: TextStyle(
                color: Colors.white,
                fontSize: 40
              ),),
            ),
            Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.5,right: 35,left: 35),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.amberAccent,
                      filled: true,
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                decoration: InputDecoration(
                fillColor: Colors.amberAccent,
                filled: true,
                hintText: 'Name',
                     border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10)
    )
    ),
    ),
                  SizedBox(
                    height: 20,
                  ),
           Row(
             children: [
               TextButton(onPressed: (){
                 Navigator.pushNamed(context, 'welcome');
               }, child: Text('Log in',style: TextStyle(
                 decoration: TextDecoration.underline,
                 fontSize: 40,
                 color: Colors.white,
               ),))
             ],
           )
      ]
    ),
    )
        ]
    )
      )
    );
 }
}
The explaination for this page is below:
This login page features a background image, text fields for email and name input, and a login button that navigates to the welcome page.
MyLogin: Defines a stateful widget for the login page.
Container: The outer container holds the entire layout.

BoxDecoration: Sets a background image (img_4.png) using DecorationImage and covers the entire screen with BoxFit.cover.
Scaffold: Provides the basic material design visual layout structure.

backgroundColor: Colors.transparent: Makes the scaffold background transparent to display the background image.
body: Stack: Uses a stack to overlay multiple children widgets.
Stack: Allows overlapping of widgets.

Container with Text: Displays the welcome message.

padding: EdgeInsets.only(left: 35, top: 130): Positions the text.
Text: Displays 'Welcome to my new app' in white, 40-point font.
Container with Form: Contains the form fields and login button.

padding: EdgeInsets.only(...): Positions the form container.
Column: Arranges the form fields and button vertically.
TextField for Email: Input field for email with amber accent background and rounded corners.
SizedBox: Adds spacing between the form fields.
TextField for Name: Input field for name with similar styling.
Row with TextButton: Contains the login button.
TextButton: Navigates to the welcome page when pressed.
Navigation
Navigator.pushNamed(context, 'welcome'): Navigates to the welcome page when the login button is pressed.
This setup provides a user-friendly login interface with a visually appealing background, input fields for email and name, and a simple navigation mechanism to the welcome page.
Next page in this app is welcome page 
The page is like following:

import 'package:firstapp/SerachFlightPage.dart';
import 'package:flutter/material.dart';
class MyWelcome extends StatefulWidget {
  const MyWelcome({super.key});
 @override
  State<MyWelcome> createState() => _MyWelcomeState();
}
class _MyWelcomeState extends State<MyWelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(211, 221, 229, 100),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 313,
                width: 304,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/img_6.png'),
                  )
                ),
                ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Let us enjoy ',style: TextStyle(
                color: Colors.black12,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              ),
              Text('New World',style: TextStyle(
                color: Colors.black12,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(
                height: 20,
              ),
              Text('Search the safest destination',style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 260,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(64, 147, 206, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SerachFlightpage()));
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
),
],
          ),
        ),
      ),
    );
  }
}
explaination of thus page is:
This Flutter code defines a stateful widget, MyWelcome, which serves as a welcome screen for an application. The main components are:

Background and Container Setup: The screen has a light blue background color. Inside the screen, a centered container is used to hold the main content with padding around it.

Circular Image: At the top, there's a circular container displaying an image (img_6.png) from the assets. This container is styled to be circular with a white background.

Text Elements: Below the image, two large, bold text elements display the messages "Let us enjoy" and "New World," both in a light black color. These are followed by a smaller text that reads "Search the safest destination."

Button: At the bottom, there is a blue button labeled "Get Started." This button is styled with rounded corners and, when pressed, navigates to a new page called SerachFlightpage using Flutter's navigation system.
The code ensures the welcome screen is visually appealing with a structured layout and intuitive navigation to the next screen.

Next page in this app is search_flight_page    
This Flutter code defines a stateful widget, SerachFlightpage, which serves as a flight search and booking page in an application. The main components are:

State Management: The page maintains an integer state _selectedIndex to track the selected tab index, and a method _onItemTapped to update this index.

Scaffold and Background: The page uses a Scaffold widget with a transparent background. The main content is wrapped in a container with padding.

Header: At the top, a row displays a greeting "Hi User!" and a notification icon.

Search Section: Below the header, there are two large, bold text elements asking "Where You Want to Go?" followed by a text field for searching flights. The text field includes a search icon and a hint text "Search A Flight."

Upcoming Trips Section: A section titled "Our Upcoming Trips" displays a container with trip details. This container includes:

Dates and times for departure and arrival.
Departure and arrival locations represented with text and an icon.
Two labels indicating trip segments, such as "Agra, Delhi" and "Mathura, Rishikesh."
Book Now Button: At the bottom, a centered button labeled "Book Now" is styled with rounded corners and a blue background. When pressed, it navigates to the BookFlight page using Flutter's navigation system.

The code creates a structured and user-friendly interface for searching and booking flights, with clear sections and navigation.
Next apppage in this app is book_flight_page the page is like below:

import 'package:flutter/material.dart';

class BookFlight extends StatefulWidget {
  const BookFlight({super.key});

  @override
  State<BookFlight> createState() => _BookFlightState();
}

class _BookFlightState extends State<BookFlight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(300),
                  bottomRight: Radius.circular(300),
                ),
                  image: DecorationImage(
                    image: AssetImage('assets/img_6.png'),
                  )
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Book Your flight',style: TextStyle(
              fontSize: 18,
              color: Colors.brown,
            ),),
            SizedBox(
              height:10 ,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(64, 147, 206, 100),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: (){},
                      child: Text('One Way',style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),),
                  ),
                ),
                Container(
                  height: 40,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(64, 147, 206, 100),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: (){},
                    child: Text('Round Trip',style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),),
                  ),
                ),
  ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: 308,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('From'),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 35,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Color.fromRGBO(224, 237, 246, 100),
                        filled: true,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('To'),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 35,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Color.fromRGBO(224, 237, 246, 100),
                        filled: true,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Date'),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 35,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Color.fromRGBO(224, 237, 246, 100),
                        filled: true,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: 280,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(64, 147, 206, 100),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: (){},
                      child: Text('View Flights',style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Explaination of this code is below:

This Flutter widget represents a flight booking page where users can book flights by selecting options like one-way or round-trip and entering flight details.

Code Breakdown
BookFlight Class: This is a StatefulWidget that creates an instance of _BookFlightState.

_BookFlightState Class:

build Method: The core method to build the UI of the flight booking page.
Scaffold Widget: Provides the structure for the page, including the app bar and body.
Body Container: Contains a Column widget that organizes the UI elements vertically.

Top Image Container: Displays an image with rounded bottom corners.
"Book Your Flight" Text: A heading for the booking section.
Flight Type Buttons: Two buttons ("One Way" and "Round Trip") allowing users to select the type of flight.
Input Fields: Three text fields to enter the departure location, destination, and date.
View Flights Button: A button to view available flights based on the entered details.
UI Elements
Top Image Container: Displays an image with bottom-left and bottom-right rounded corners.
Flight Type Buttons: Two buttons for selecting either a one-way or round trip.
Input Fields:
"From": Enter the departure location.
"To": Enter the destination.
"Date": Enter the travel date.
View Flights Button: A button to submit the entered details and view available flights.
Styling
The buttons and input fields are styled with rounded corners and specific colors.
The layout includes padding, spacing, and specific height and width constraints to ensure a consistent and user-friendly interface.
Dependencies
Material.dart: Used to create material design widgets.
AssetImage: Used to load the image from the assets directory.
so this the frontend basic app .the features of flutter I used in this is asset image ,scafold,container,box-decorations,routes etc.
