import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turistica_app/dashboard_screen.dart';

class PasswordSecret2 extends StatelessWidget{
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
                    'Select your\nsecret password',
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
                    hintText: '********************',
                    hintStyle: TextStyle(fontSize: 20,),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye_outlined,color: Color(0xFF676D75),),
                      onPressed: (){

                      },),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> DashboardScreen()));
                },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFEAEBEF),
                        foregroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )
                    ),
                    child: Text('Create Account',style: TextStyle(color: Colors.grey, fontSize: 16,fontWeight: FontWeight.bold),)),
              ),

            ],
          ),
        ),
      ),
    );
  }

}