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
      home: Bot(),
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
