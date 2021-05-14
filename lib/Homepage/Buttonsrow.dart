import 'package:flutter/material.dart';
import 'package:planta/Sections/SectionPage.dart';
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
        Flatbutton(name: 'Indoor',index:1),
        Flatbutton(name: 'Outdoor',index: 2),
        Flatbutton(name: 'Flowers',index: 3)
      ],
    );
  }
  Widget Flatbutton( { String name,int index}){
    return FlatButton(
      onPressed: (){
        if(index==1) {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SectionPage(title:'Indoor')));
        }
        if(index==2) {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SectionPage(title:'Outdoor')));
        }
        if(index==3) {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SectionPage(title:'Flowers')));
        }
      },
      child: Text(name,style: TextStyle(fontSize: 20,color: Colors.white),),
      color: Colors.green ,
      shape: StadiumBorder(),
    );
  }

}
