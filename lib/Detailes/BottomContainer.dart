import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ShoppingCart.dart';
import 'ShoppingDetailes.dart';
class BottomContainer extends StatelessWidget {
  final String name;
  final int price;

  BottomContainer({this.name, this.price});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
          width: MediaQuery
              .of(context)
              .size
              .width,
          height: MediaQuery
              .of(context)
              .size
              .height * .35,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))
          ),
          child:
              ShoppingDetailes(name: name, price: price),



      ),
    );
  }


}
