import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turistica_app/create_account.dart';

class Login extends StatefulWidget{
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 165,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Turistica(),
                  SizedBox(height:150),
                  Center(
                    child: Text('by tapping "sign in" you agree to Terms.\n'
                        'Learn how we process your data in our Privacy Policy\n'
                        'and Cookies Policy',textAlign: TextAlign.center,style: TextStyle(
                      color: Colors.white,
                    ),),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 382,
                    height: 54,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> CreateAccount()));
                    },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                              color: Colors.red
                            ),
                          )
                        ),
                        child: Text('Create Account',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 382,
                    height: 54,
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide(
                                  color: Colors.white
                              ),
                            )
                        ),
                        child: Text('Sign In',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                  ),
                  SizedBox(height: 40,),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
class Turistica extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/Vector L.png',width: 48,height: 65,),
          SizedBox(width: 10,),
          Image.asset('assets/images/Turistica L.png',width: 214,height: 39,),
        ],
      ),
    );
  }

}

