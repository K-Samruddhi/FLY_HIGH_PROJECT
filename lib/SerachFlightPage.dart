import 'package:firstapp/BookFlight.dart';
import 'package:flutter/material.dart';

class SerachFlightpage extends StatefulWidget {
  const SerachFlightpage({super.key});

  @override
  State<SerachFlightpage> createState() => _SerachFlightpageState();
}

class _SerachFlightpageState extends State<SerachFlightpage> {
  int _selectedIndex =0;
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.transparent,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Hi User !',style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),
                Icon(
                  Icons.notifications,
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text('Where You Want to',style: TextStyle(
              color: Colors.white,
              fontWeight:FontWeight.bold,
              fontSize: 24,
            ),),
            Text('Go ?',style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),),
            SizedBox(
              height: 10,
            ),
            Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 100),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search A Flight',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            SizedBox(
              height: 10,
            ),
            Text('Our Upcoming Trips',style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 120,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(28, 94, 133, 100),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('26 March, 8.00 pm',style: TextStyle(color: Colors.white),),
                            Text('27 March, 8.00 pm',style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('ABC',style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),),
                              Text('.....'),
                              Icon(Icons.flight),
                              Text('.....'),
                              Text('XYZ',style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),),
                            ],
                          ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(173, 206, 225, 100),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text('Agra, Delhi',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(63, 126, 164, 100),
                              ),),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              height: 20,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(173, 206, 225, 100),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text('Mathura,Rishikesh',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(63, 126, 164, 100),
                                ),)
                              ),
    ),
                          ),


    ],
    ),
                      SizedBox(
                        height: 10,
                       ),

                              ],
    ),

    ),
                Padding(
                  padding: const EdgeInsets.only(top:10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(63, 127, 164, 100),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BookFlight()));
                          },
                          child: Text(
                            'Book Now',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            //
  ],
    )
    ),
    );
  }
}
