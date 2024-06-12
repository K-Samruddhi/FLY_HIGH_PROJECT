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

