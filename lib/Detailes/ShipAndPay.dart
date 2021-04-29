import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ShipAndPay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shipping & Payments"),backgroundColor: Colors.green,),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Heading("Payments"),
            SizedBox(height: 10,),
            Content("• COD (Pay in cash at the time of actual delivery of product)"),
           Content("• Google pay"),
            Content("• Account Transfer"),
            Content("• Credit card"),
            Content("• Debit card"),
            SizedBox(height: 15,),
            Divider(thickness: 1,),
            SizedBox(height: 15,),
            Heading("Shipping"),
            SizedBox(height: 10,),
            Content("This product will be delivered at your doorstep."
                "Shipping charges are calculated based on the number of units,distance and delivery date."),
            SizedBox(height: 15,),
            Divider(thickness: 1,),
            SizedBox(height: 15,),
            Heading("Return"),
            SizedBox(height: 10,),
            Row(children: [ Icon(Icons.block,color: Colors.red,),Content(" No Returns Applicable")],)

          ],
        ),
      ),
    );
  }
  Widget Heading(String content){
    return Text(content,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.left,);
  }
  Widget Content(String content){
    return Text(content, style: TextStyle(fontSize: 22));
  }
}
