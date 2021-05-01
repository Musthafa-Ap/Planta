import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Suggestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Suggestions"),backgroundColor: Colors.green,),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
    children: [

     Container(margin: EdgeInsets.all(15),
       child: TextField(
scrollPhysics: BouncingScrollPhysics(),
           maxLines: 18,
           decoration: InputDecoration(
             focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
             hintText: "Type here....",
             border: OutlineInputBorder(
               borderRadius: BorderRadius.all(Radius.circular(10)),


             )
           ),

       ),
     ),
      SizedBox(height: MediaQuery.of(context).size.height*.1,),
      FlatButton(child: Text("SUBMIT"),color: Colors.green,onPressed: (){},)
    ],

    ),
        )
      )
    );
  }
}
