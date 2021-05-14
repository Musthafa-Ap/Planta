import 'package:flutter/material.dart';
import 'package:planta/Detailes/Detailes.dart';
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
          Container(
            child: Text("Special Offers",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            alignment: Alignment.topLeft,
          ),
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

SpecialCard(img: "Moneyplant2.jpeg",name: 'Moneyplant 2',price:298,context: context),
                SpecialCard(img: 'Anthurium.jpg',name: 'Anthurium',price: 400,context: context),
               SpecialCard(img: 'Indore_palm.jpeg',name: 'Indore Palm',price: 376,context: context),
                SpecialCard(img: 'Snakeskin.jpg',name: 'Snakeskin ',price: 500,context: context),
                SpecialCard(img: 'Spathiphyllm.jpg',name: 'Spathiphyllum',price: 450,context: context)

              ],
            ),
          ),
          
        ],
      ),
      alignment: Alignment.topLeft,
    );
  }

  Widget SpecialCard( {String img,String name,int price,BuildContext context}){
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return Detailes(
            img: img,name: name,price: price,context: context,
          );
        }));
      },
      child: Container(
        padding: EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width/1.32,
        height: MediaQuery.of(context).size.height/4.57,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 5),
              height: MediaQuery.of(context).size.height/5.33,
              child: ClipRRect(

                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/images/$img"),
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(name,style: TextStyle(fontSize: 20),),
                Text("₹$price",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
              ],
            )
          ],
        ),
      ),
    );

  }
}
