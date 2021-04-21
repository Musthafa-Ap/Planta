import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planta/Detailes/BottomContainer.dart';
class Detailes extends StatelessWidget {

  final String img;
  final BuildContext context;
  final String name;
  final int price;
  Detailes({this.img,this.context,this.name,this.price});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*.70,
            child: Image.asset('assets/images/$img',fit: BoxFit.cover,),
          ),
          IconButton(
            padding: EdgeInsets.only(left: 20,top: 40),
            icon: Icon(Icons.arrow_back,color: Colors.black,),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
         BottomContainer(price:price,name:name),
        ],
      ),
    );
  }
}
