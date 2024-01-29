import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turistica_app/login.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TransparentBottomImage(),
    );
  }
}

class TransparentBottomImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 450,
          child: ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.transparent,
                  Colors.white.withOpacity(1.0),
                ],
              ).createShader(bounds);
            },
            blendMode: BlendMode.dstIn,
            child: Image.asset(
              'assets/images/rotate.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Image.asset('assets/images/Explore.png'),
        SizedBox(height: 11),
        Image.asset('assets/images/Palermo.png'),
        SizedBox(height: 11),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login() ));
                },
                child: Text("Get Started",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              ),
          ),
        ),
      ],
    );
  }
}
