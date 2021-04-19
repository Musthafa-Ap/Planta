import 'package:flutter/material.dart';
class Buttonsrow extends StatefulWidget {
  @override
  _ButtonsrowState createState() => _ButtonsrowState();
}

class _ButtonsrowState extends State<Buttonsrow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flatbutton(name: 'Indoor', isSelected: true),
        Flatbutton(name: 'Outdoor'),
        Flatbutton(name: 'Flowers')
      ],
    );
  }
  Widget Flatbutton( { String name, bool isSelected =false}){
    return FlatButton(
      onPressed: (){
        print("Button pressed");
      },
      child: Text(name,style: TextStyle(fontSize: 20,color: isSelected ? Colors.white : Colors.black),),
      color: isSelected ? Colors.green : Colors.grey,
      shape: StadiumBorder(),
    );
  }

}
