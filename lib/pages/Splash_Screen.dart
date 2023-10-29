import 'package:flutter/material.dart';
import 'package:finallyshop/main.dart';
import 'package:finallyshop/bottomnav/home.dart';
import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> thispage(),
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Loading...",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
              SpinKitThreeInOut(color: Colors.orange,size: 70),
            ],
          ),
      ),
      ),
    );
  }
}
