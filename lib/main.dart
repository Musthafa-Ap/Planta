import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'Homepage/Mainpage.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Intro(),
    );
  }
}




















class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(

      showNextButton: true,
      next: Text("Next"),
      showSkipButton: true,
      skip: Text("skip"),

      done: Text("done"),
      onDone: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));

      },

      pages: [
        PageViewModel(
          title: '',
            bodyWidget: Column(
            children: [
              SizedBox(height: 60,),
              Text("Welcome to Planta",style: TextStyle(fontSize: 40,color: Colors.green,fontWeight: FontWeight.bold)),
        Container(
          width: 250,
          height: 450,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage("assets/images/Intro.jpg"))
          ),
        ),
            ],
          )
        ),


        PageViewModel(


            bodyWidget: Column(
              children: [
                SizedBox(height: 60,),
                Container(
                  width: 250,
                  height: 350,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage("assets/images/Delivery1.png"))
                  ),
                ), Text("Delivery at anywhere...",style: TextStyle(fontSize: 30,color: Colors.green,)),
              ],
            ),
          title: '                                                      ',
        ),
        PageViewModel(


          bodyWidget: Column(
            children: [
              SizedBox(height: 60,),
              Container(
                width: 250,
                height: 350,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage("assets/images/Payment.jpg"))
                ),
              ), Text("All Payments are accepted",style: TextStyle(fontSize: 30,color: Colors.green,)),
            ],
          ),
          title: '                                                      ',
        ),
  ]
    );
  }
}

