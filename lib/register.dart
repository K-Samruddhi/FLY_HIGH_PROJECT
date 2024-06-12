import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(image:AssetImage('assets/img_5.png'), fit: BoxFit.cover)
    ),
    child: Scaffold(
    backgroundColor: Colors.transparent,
    body: Stack(
    children: [
    Container(
    padding: EdgeInsets.only(left: 35,top: 130),
    child: Text("Create\n New Account",
    style: TextStyle(
    color: Colors.white,
    fontSize: 50,
    ),),
    ),
      Container(
        padding: EdgeInsets.only(top:MediaQuery.of(context).size.height* 0.5,right: 35,left: 35),
        child: Column(
            children: [
        TextField(
        decoration: InputDecoration(
        fillColor: Colors.amberAccent.shade100,
            filled: true,
            hintText: 'Email',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )
        ),
      ),
      SizedBox(
        height: 20,
      ),
      TextField(
        decoration: InputDecoration(
            fillColor: Colors.amberAccent.shade100,
            filled: true,
            hintText: 'Name',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )
        ),
      ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.amberAccent.shade100,
                    filled: true,
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
              ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Sign Up",style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),),
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.black,
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.arrow_forward),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, 'register');
                  }, child:Text('Sign In',style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 20,
                    color: Colors.black,
                  ),)),
                ],
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




