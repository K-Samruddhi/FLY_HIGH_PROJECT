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


