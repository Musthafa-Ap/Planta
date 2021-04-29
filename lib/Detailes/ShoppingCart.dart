import 'package:flutter/material.dart';
import 'package:mailer/smtp_server/gmail.dart';

import 'package:planta/Homepage/HomeDetailesPage.dart';
import 'package:planta/Success/SuccessScreen.dart';
import 'package:planta/main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:mailer/mailer.dart';
import 'Detailes.dart';

class ShoppingCart extends StatefulWidget {
  final int Count;
  final String name;
  final BuildContext context;
  ShoppingCart({this.name, this.context, this.Count});

  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  bool liked = false;
String _email;
TextEditingController password = TextEditingController();
  TextEditingController mobile = TextEditingController();
  String mobile1='';
  TextEditingController address = TextEditingController();
  String address1='';
String password1='';
final formkey = GlobalKey<FormState>();
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
                  border: Border.all(color: Colors.black)),
              child: IconButton(
                icon: Icon(liked ? Icons.favorite : Icons.favorite_border,
                    color: liked ? Colors.red : Colors.black),
                onPressed: () {
                  setState(() {
                    liked = !liked;
                  });
                },
              )),
          FlatButton.icon(
              onPressed: () {
                return Alert(
                    context: context,
                    title: 'Delivery Detailes',
                    content: Form(
                      key: formkey,
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              hintText: 'Example@gamil.com',
                              prefixIcon: Icon(Icons.email),
                            ),
                            validator: (input) =>   !input.contains('@')? 'Not a email' :null,
                            onSaved: (input)=>_email=input,

                          ),

                          TextFormField(
                            decoration: InputDecoration(

                              labelText: 'Password',
                              prefixIcon: Icon(Icons.security),
                            ),
                            controller: password,
                            obscureText: true,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.number,

                            decoration: InputDecoration(
                                labelText: 'Mobile Number ',
                              hintText: '9999999999',
                              prefixIcon: Icon(Icons.local_phone)
                            ),
                            controller: mobile,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.text,
                            scrollPhysics: BouncingScrollPhysics(),
                            maxLines: 3,
                            decoration: InputDecoration(
                                labelText: 'Address',
                              prefixIcon: Icon(Icons.local_shipping)

                            ),
                            controller: address,
                          )
                        ],
                      ),
                    ),
                    buttons: [
                      DialogButton(
                        child: Text('NO'),
                        onPressed: () {

                          Navigator.of(context).pop();
                        },
                        color: Colors.white,
                        border: Border.all(color: Colors.green),
                      ),
                      DialogButton(
                        child: Text("YES"),
                        onPressed: () {
                          setState(() {
                            submit();
                            password1=password.text ;
                            mobile1=mobile.text;
                            address1=address.text;
                            _launchEmail(widget.name,widget.Count.toString(),_email,password1,mobile1,address1);
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SuccessScreen()));



                          });
                          //Navigator.of(context).pop();



                        },
                        color: Colors.green,
                      )
                    ]).show();
              },
              icon: Icon(
                Icons.shopping_basket,
                size: 25,
              ),
              label: Text(
                "Buy Now",
                style: TextStyle(fontSize: 25),
              ),
              shape: StadiumBorder(),
              color: Colors.green,
              padding: EdgeInsets.only(left: 75, right: 75, top: 8, bottom: 8))
        ],
      ),
    );
  }
void submit(){
    if(formkey.currentState.validate()){
    formkey.currentState.save();
    Navigator.of(context).pop();
    }



}




  _launchEmail(String name,String Count,String email,String password1,String mobile1,String address1) async {
    String username = email;
    String password = password1;

    final smtpServer = gmail(username, password);

    final message = Message()
      ..from = Address(username, 'Musthafa')
      ..recipients.add('Musthafamohammed398@gmail.com')
      ..subject = 'For ordering the item ${DateTime.now()}'
      ..text = 'This is the plain text.\nThis is line 2 of the text part.'
      ..html = "<h2>Plant name : $name<br>Count : $Count<br>Mobile number : $mobile1<br>Address : $address1</h2>\n<p></p>";

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' + sendReport.toString());
    } on MailerException catch (e) {
      print('Message not sent.');
      
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
    }
  }

}























