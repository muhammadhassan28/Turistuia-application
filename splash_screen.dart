import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turistica_app/onboarding_screeen2.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 4),(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoarding(),));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgimage.png'),
            fit: BoxFit.cover,
            alignment: Alignment.bottomLeft,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/Layer_2.png',width: 48,height: 65,),
              SizedBox(width: 10,),
              /*Text(
                'Turistica',
                style: TextStyle(
                  color: Colors.black, // Text color for content
                  fontSize: 24.0,
                ),
              ),*/
              Image.asset('assets/images/Turistica.png',width: 214,height: 39,),
            ],
          ),
        ),
      ),
    );
  }
}