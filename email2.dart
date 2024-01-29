import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turistica_app/password.dart';

class Email2 extends StatefulWidget{
  @override
  State<Email2> createState() => _Email2State();
}

class _Email2State extends State<Email2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/Layer_2.png',width: 26,height: 35,),
              SizedBox(width: 10,),
              Image.asset('assets/images/Turistica.png',width: 118,height: 21,),
            ],
          ),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 90,),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Text(
                    'Can we get\n your Email?',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'james@email.com',
                    hintStyle: TextStyle(fontSize: 20,),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),

              ),
              SizedBox(height: 65,),
              Container(
                width: 382,
                height: 54,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PasswordSecret()));
                },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFC8102E),
                        foregroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )
                    ),
                    child: Text('Next',style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold),)),
              ),

            ],
          ),
        ),
      ),
    );
  }
}