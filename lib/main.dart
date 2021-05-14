import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:planta/Detailes/Suggestions.dart';
import 'package:planta/Success/SuccessScreen.dart';
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
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Bot()));

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




class Bot extends StatefulWidget {
  @override
  _BotState createState() => _BotState();
}

class _BotState extends State<Bot> {
  int _index = 1;
  var _pages = [SuccessScreen(),Homepage(),Suggestions()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages[_index],),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _index,
          fixedColor: Colors.green,
          selectedFontSize: 17,
          iconSize: 25,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text('Cart'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(
              icon: Icon(Icons.feedback), title: Text('Suggestions'),),
          ],
          onTap: (index){
            setState(() {
              _index = index;
            }
            );
          },
        ),


    );
  }
}
