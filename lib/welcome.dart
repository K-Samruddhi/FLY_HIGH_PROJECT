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



