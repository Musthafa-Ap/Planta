import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planta/Detailes/Detailes.dart';

class PopularItems extends StatefulWidget {
  @override
  _PopularItemsState createState() => _PopularItemsState();
}

class _PopularItemsState extends State<PopularItems> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Divider(
          thickness: .5,
        ),
        Container(
          padding: EdgeInsets.only(left: 20),
            child: Text("Popular",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  ImageCard('Moneyplant.jpg','Money Plant',340,context),
                  ImageCard('Ficus_plant.jpeg','Ficus Plant',260,context),
                  ImageCard('Peace_lilly.jpg','Peace Lilly',129,context),
                  ImageCard('Air_purifying.jpg','Air Purifying',543,context),
                  ImageCard('Test_tube_plant.jpg','Testtube Plant',298,context)

                ],
              ),
            ),
          ),
        ],

    );
  }
  Widget ImageCard(String img,String name,int price,BuildContext context ){
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return Detailes(
              img: img,name: name,price: price,context: context,
          );
        }));
      },
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: 110,
                height: 160,
                child: ClipRRect(
                  child: Image.asset(
                    "assets/images/$img",
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(height:10),
              Text(name,style: TextStyle(fontSize: 17),),
              SizedBox(height: 5,),
              Text('₹$price',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
            ],
          )
      ),
    );
  }

}
