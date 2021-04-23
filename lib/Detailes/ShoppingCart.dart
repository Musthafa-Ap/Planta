
import 'package:flutter/material.dart';
import 'package:planta/Homepage/HomeDetailesPage.dart';
import 'package:planta/main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'Detailes.dart';

class ShoppingCart extends StatelessWidget {


  final String name;
  final BuildContext context;
  ShoppingCart({this.name,this.context});






  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black)
            ),
            child: IconButton(icon: Icon(Icons.favorite,color: Colors.red),onPressed: (){print(name);},)
          ),
          FlatButton.icon(onPressed: (){return Alert(

            context: context,
            title:'ORDER',
            desc: '(Send an email)',
            content: Text('Are you sure to buy this plant ?'),
            buttons: [
              DialogButton(
                child: Text('NO'),

                onPressed: (){
                 Navigator.of(context).pop();
                 },
color: Colors.white,border:Border.all(color: Colors.green),
              ),
              DialogButton(

                child: Text("YES"),
                onPressed: ( ){

                  Navigator.of(context).pop();


_launchEmail();





                },
                color: Colors.green,

              )
            ]

          ).show();






          }, icon: Icon(Icons.shopping_basket,size: 25,), label: Text("Buy Now",style: TextStyle(fontSize: 25),),shape: StadiumBorder(),
              color: Colors.green,padding: EdgeInsets.only(left: 75,right: 75,top: 8,bottom: 8))
        ],
      ),
    );
  }
  void _launchEmail()async{
    var url = 'mailto:musthafamohammed398@gmail.com?subject=For ordering &body=Plant name : $name';
    if(await canLaunch(url)){
      await launch(url);
    }
    else{
      throw 'Could not send mail';
    }
  }

}















