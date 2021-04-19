import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planta/Homepage/Buttonsrow.dart';
import 'package:planta/Homepage/Heading.dart';
import 'package:planta/Homepage/HomeItemsPage.dart';
import 'package:planta/Homepage/SpecialItems.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: (Icon(
          Icons.menu,
          color: Colors.grey,
        )),
        actions: [
          Container(
            width: 40,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[100],
            ),
            child: Icon(
              Icons.search,
              color: Colors.grey,
              size: 30,
            ),
          ),
        ],
        toolbarHeight: 50,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Heading(),
          SizedBox(height: 10),
          Buttonsrow(),
          HomeItemsPage(),
          Divider(
            thickness: 1,
          ),


SpecialItems(),



        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        fixedColor: Colors.green,
        selectedFontSize: 17,
        iconSize: 25,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text('Cart')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.feedback), title: Text('Suggestions')),
        ],
        onTap: (index){
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
