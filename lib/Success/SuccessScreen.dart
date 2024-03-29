import 'package:flutter/material.dart';
import 'package:planta/Detailes/Detailes.dart';
import 'package:planta/Homepage/Mainpage.dart';
class SuccessScreen extends StatefulWidget {
  @override
  _SuccessScreenState createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height:MediaQuery.of(context).size.height*.1 ,),
            Container(
                height:MediaQuery.of(context).size.height*.5 ,
                child: Image.asset("assets/images/Success.gif",),
              alignment: Alignment.topCenter,
            ),
            Text("YOUR ORDER IS PLACED",style: TextStyle(color: Colors.green,fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(height:MediaQuery.of(context).size.height*.05),
            Text("THANK YOU",style: TextStyle(color: Colors.green,fontSize: 30,),),
            SizedBox(height:MediaQuery.of(context).size.height*.09),
            FlatButton(child: Text("DONE",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),onPressed: (){ Navigator.pop(context);},color: Colors.lightGreen,)

          ],
        ),
      ),
    );
  }
}
