import 'package:flutter/material.dart';
class SpecialItems extends StatefulWidget {
  @override
  _SpecialItemsState createState() => _SpecialItemsState();
}

class _SpecialItemsState extends State<SpecialItems> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Text("Special Offers",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Container(
            width: 200,
            height: 150,
            color: Colors.grey,
          )
        ],
      ),
      alignment: Alignment.topLeft,
    );
  }
}
