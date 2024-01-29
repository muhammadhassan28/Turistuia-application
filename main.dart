import 'package:flutter/material.dart';
import 'package:turistica_app/login.dart';
import 'package:turistica_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:null,
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (Context) => Login(),
              ));
        },
          child: Text('open First page'),),
      ),
    );
  }
}
