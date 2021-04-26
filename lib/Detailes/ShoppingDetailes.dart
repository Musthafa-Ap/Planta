import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ShoppingCart.dart';
class ShoppingDetailes extends StatefulWidget {
  final String name;
  final int price;
  ShoppingDetailes({this.price,this.name});
  @override
  _ShoppingDetailesState createState() => _ShoppingDetailesState();
}

class _ShoppingDetailesState extends State<ShoppingDetailes> {
   int  Count = 1 ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
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
                            Text(widget.name,style: TextStyle(fontSize: 30),),
                            Text( widget.price.toString(),style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
                          ],
                        )
                    ),
                    Divider(thickness: 1,),
                   Container(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [

                       Text("Quantity",style: TextStyle(fontSize: 20),),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           IconButton(icon: Icon(Icons.arrow_drop_down,color: Colors.black,size: 40,),onPressed: (){setState(() {
                             if(Count>1){Count--;}
                           });},highlightColor: Colors.green,),
                           Text('$Count',style: TextStyle(fontSize: 30,color: Colors.black),),
                           IconButton(icon: Icon(Icons.arrow_drop_up,color: Colors.black,size: 40,),onPressed: (){setState(() {
                             Count++;
                           });},)
                         ],
                       )
                     ],),
                     margin: EdgeInsets.only(left: 15),
                   ),
                   /* ListTile(
                        leading: Text("Quantity",style: TextStyle(fontSize: 20),),

                    ),*/
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
        ),

        ShoppingCart(name: widget.name,Count : Count, context: context,),

      ],
    );
  }
}
