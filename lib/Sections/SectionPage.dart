import 'package:flutter/material.dart';
import 'package:planta/Homepage/Mainpage.dart';
import 'package:planta/Homepage/PopularItems.dart';
class SectionPage extends StatefulWidget {
  String title;
  SectionPage({this.title});
  @override
  _SectionPageState createState() => _SectionPageState();
}

class _SectionPageState extends State<SectionPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,title: Text( widget.title.toString()),
      ),
      body: Container(
        child:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BigImageCard("ZZ_plant.jpg",'ZZ Plant',259,context),
                    VerticalDivider(thickness: .3,color: Colors.black,width: 1,),
                    BigImageCard("Chinese_moneyplant.jpg",'Chinese Plant',384,context),
                  ],
                ),
              ),
              Divider(thickness: .3,color: Colors.grey,),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BigImageCard("String_of_pearls.jpg",'String of Pearls',400,context),
                    VerticalDivider(thickness: .3,color: Colors.grey,width: 1,),
                    BigImageCard("Silverdollar_plant.jpg",'Silverdollar Plant',312,context),
                  ],
                ),
              ),

              Divider(thickness: .3,color: Colors.grey,),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BigImageCard('Moneyplant.jpg','Money Plant',340,context),
                    VerticalDivider(thickness: .3,color: Colors.grey,width: 1,),
                    BigImageCard('Ficus_plant.jpeg','Ficus Plant',260,context),
                  ],
                ),
              ),
              Divider(thickness: .3,color: Colors.grey,),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BigImageCard("ZZ_plant.jpg",'ZZ Plant',259,context),
                    VerticalDivider(thickness: .3,color: Colors.black,width: 1,),
                    BigImageCard("Chinese_moneyplant.jpg",'Chinese Plant',384,context),
                  ],
                ),
              ),
              Divider(thickness: .3,color: Colors.grey,),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BigImageCard("String_of_pearls.jpg",'String of Pearls',400,context),
                    VerticalDivider(thickness: .3,color: Colors.grey,width: 1,),
                    BigImageCard("Silverdollar_plant.jpg",'Silverdollar Plant',312,context),
                  ],
                ),
              ),

              Divider(thickness: .3,color: Colors.grey,),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BigImageCard('Moneyplant.jpg','Money Plant',340,context),
                    VerticalDivider(thickness: .3,color: Colors.grey,width: 1,),
                    BigImageCard('Ficus_plant.jpeg','Ficus Plant',260,context),
                  ],
                ),
              ),
              Divider(thickness: .3,color: Colors.grey,),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BigImageCard("ZZ_plant.jpg",'ZZ Plant',259,context),
                    VerticalDivider(thickness: .3,color: Colors.black,width: 1,),
                    BigImageCard("Chinese_moneyplant.jpg",'Chinese Plant',384,context),
                  ],
                ),
              ),
              Divider(thickness: .3,color: Colors.grey,),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BigImageCard("String_of_pearls.jpg",'String of Pearls',400,context),
                    VerticalDivider(thickness: .3,color: Colors.grey,width: 1,),
                    BigImageCard("Silverdollar_plant.jpg",'Silverdollar Plant',312,context),
                  ],
                ),
              ),

              Divider(thickness: .3,color: Colors.grey,),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BigImageCard('Moneyplant.jpg','Money Plant',340,context),
                    VerticalDivider(thickness: .3,color: Colors.grey,width: 1,),
                    BigImageCard('Ficus_plant.jpeg','Ficus Plant',260,context),
                  ],
                ),
              ),





            ],
          ),
        )
      )
    );
  }
}
