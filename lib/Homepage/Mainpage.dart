import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planta/Detailes/Suggestions.dart';
import 'package:planta/Homepage/Buttonsrow.dart';
import 'package:planta/Homepage/Heading.dart';
import 'package:planta/Homepage/HomeDetailesPage.dart';
import 'package:planta/Homepage/PopularItems.dart';
import 'package:planta/Homepage/SpecialItems.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context){
            return IconButton(
              icon: Icon(Icons.menu,color: Colors.grey,
              ),onPressed: (){
              Scaffold.of(context).openDrawer();
            }
              ,
            );
          },
        ),
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
      drawer: Drawer(

        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
              UserAccountsDrawerHeader(

                 accountName: Text("Amal Er",style: TextStyle(fontSize: 20),),
                 decoration: BoxDecoration(color: Colors.grey),
currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/images/Amal.JPG"),),
               ),

            ListTile(leading: Icon(Icons.favorite,),
            title: Text("My Wishlist",style: TextStyle(fontSize: 20),),),
            ListTile(leading: Icon(Icons.shopping_cart),
              title: Text("My Cart",style: TextStyle(fontSize: 20),),),
            ListTile(leading: Icon(Icons.person),
              title: Text("My Account",style: TextStyle(fontSize: 20),),),
            ListTile(leading: Icon(Icons.notifications),
              title: Text("My Notifications",style: TextStyle(fontSize: 20),),),
            ListTile(leading: Icon(Icons.chat),
              title: Text("My Chats",style: TextStyle(fontSize: 20),),),
            ListTile(leading: Icon(Icons.local_offer),
              title: Text("Offers",style: TextStyle(fontSize: 20),),),
            ListTile(leading: Icon(Icons.home),
              title: Text("Home",style: TextStyle(fontSize: 20),),),
            ListTile(leading: Icon(Icons.error_outline),
              title: Text("About",style: TextStyle(fontSize: 20),),),
            ListTile(leading: Icon(Icons.supervisor_account),
              title: Text("Developers",style: TextStyle(fontSize: 20),),),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Heading(),
          SizedBox(height: 10),
          Buttonsrow(),
          HomeDetailesPage()

        ],
      ),

    );
  }



}



