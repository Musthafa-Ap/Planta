import 'package:flutter/material.dart';
class ProductDetailes extends StatefulWidget {
  String name;
  int price;
  ProductDetailes({this.name,this.price});
  @override
  _ProductDetailesState createState() => _ProductDetailesState();
}

class _ProductDetailesState extends State<ProductDetailes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Plant Detailes'),backgroundColor: Colors.green,),
      body:
       Container(padding: EdgeInsets.all(15),
      alignment:Alignment.topCenter ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.name,style: TextStyle(fontSize: 30)),
          Text('₹'+widget.price.toString(),style: TextStyle(fontSize: 26)),
          SizedBox(height: 10,),
          Text("Normally grown as a houseplant, nerve plant or Fittonia is a spreading evergreen with "
              "delicately veined, deep-green leaves. Although the most popular vein color is silvery white, "
              "you can also readily find varieties with veins in pink, white, and green. Nerve plant is a "
              "low-growing creeper that is a perfect fit for terrariums or bottle gardens. As beautiful as"
              " it is, fittonia is somewhat temperamental and tricky to grow as a houseplant. It requires very high,"
              " constant humidity, such as found in a terrarium, and cannot tolerate stagnant conditions. "
              "Nerve plant is also sensitive to strong, direct sunlight and will quickly suffer from leaf burn."
              "These lucky plant are very easy to take care of. Keep roots in water and avoid direct sunlight, that's it!",
            style: TextStyle(fontSize: 20),)
        ],
      )
      )



        );

  }
}
