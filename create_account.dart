import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turistica_app/email.dart';

class CreateAccount extends StatefulWidget{
  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 50,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Turistica(),
                  SizedBox(height: 80,),
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
                    child: ElevatedButton.icon(
                      icon: Icon(
                        Icons.email,
                        color: Colors.white,
                        size: 25.0,
                      ),
                      label: Text('Sign In With Gmail',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignInEmail()));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(
                              color: Colors.white
                          ),
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 382,
                    height: 54,
                    child: ElevatedButton.icon(
                      icon: Icon(
                        Icons.facebook,
                        color: Colors.white,
                        size: 25.0,
                      ),
                      label: Text('Sign In With Facebook',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      onPressed: () {
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                                color: Colors.white
                            ),
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 382,
                    height: 54,
                    child: ElevatedButton.icon(
                      icon: Icon(
                        Icons.facebook,
                        color: Colors.white,
                        size: 25.0,
                      ),
                      label: Text('Sign In With Instagram',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      onPressed: () {
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                                color: Colors.white
                            ),
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 382,
                    height: 54,
                    child: ElevatedButton.icon(
                      icon: Icon(
                        Icons.email,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      label: Text('Sign In With Email',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      onPressed: () {
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                                color: Colors.white
                            ),
                          )
                      ),
                    ),
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