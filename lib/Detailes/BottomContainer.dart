import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ShoppingCart.dart';
class BottomContainer extends StatelessWidget {
final  String name;
final int price;
 BottomContainer({this.name,this.price});
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*.35,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))
          ),
          child:Column(
            children: [
              ShoppingDetailes(),
ShoppingCart(name: name,context:context)
            ],
          )
        ),
    );

  }




  Widget ShoppingDetailes(){
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(20),
          child:Column(
            children: [
              Container(
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(name,style: TextStyle(fontSize: 30),),
                      Text("₹$price",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
                    ],
                  )
              ),
              Divider(thickness: 1,),
              ListTile(
                  leading: Text("Quantity",style: TextStyle(fontSize: 20),),
                  trailing: Text("1",style: TextStyle(fontSize: 20),)
              ),
              Divider(thickness: 1,),
              ListTile(
                leading:Text("Detailes",style: TextStyle(fontSize: 20),),
                trailing: Icon(Icons.add,size: 20,color: Colors.black,),
              ),
              Divider(thickness: 1,),
              ListTile(
                leading:Text("Shipping & Returns",style: TextStyle(fontSize: 20),),
                trailing: Icon(Icons.add,size: 20,color: Colors.black,),
              ),
            ],
          ),)

      ),
    );
  }
}
