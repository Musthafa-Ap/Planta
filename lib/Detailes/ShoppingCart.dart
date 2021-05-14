import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  final formkey = GlobalKey<FormState>();
  bool liked = false;



TextEditingController _email = TextEditingController();
  String email='';
  TextEditingController _password = TextEditingController();
  String password='';
  TextEditingController _mobile = TextEditingController();
  String mobile='';
  TextEditingController _address = TextEditingController();
  String address='';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              width: MediaQuery.of(context).size.width/7.2,
              height: MediaQuery.of(context).size.height/14,
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
                            validator: (input) {
                              if(input.isEmpty){
                                return ' Enter the email';}
                               if(!input.contains('@'))
                              {
                                return'Enter the valid email ( @ doesnt contains) ';
                              }
                              return null;
                            },
                           // onSaved: (input){input=email;},
                            controller:  _email,
                          ),

                         TextFormField(

                            decoration: InputDecoration(

                              labelText: 'Password',
                              prefixIcon: Icon(Icons.security),
                            ),
                            validator: (input){
                              if(input.isEmpty){
                                return 'Please type password';
                              }
                              else if(input.length<8){
                                return 'Please type atleast 8 characters';
                              }
                              return null;
                            },
                           controller: _password,
                            obscureText: true,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                            decoration: InputDecoration(
                                labelText: 'Mobile Number ',
                              hintText: '9999999999',
                              prefixIcon: Icon(Icons.local_phone)
                            ),
                            validator: (input){
                              if(input.isEmpty){
                                return 'Please type mobile number';
                              }
                              else if(input.length<10 || input.length>10){
                                return 'Please type a valid number';
                              }
                              return null;
                            },
                            controller: _mobile,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.text,
                            scrollPhysics: BouncingScrollPhysics(),
                            maxLines: 3,
                            decoration: InputDecoration(
                                labelText: 'Address',
                              prefixIcon: Icon(Icons.local_shipping)

                            ),
                            validator: (input){
                              if(input.isEmpty){
                                return 'Please type the address';
                              }
                              else if(input.length<16){
                                return 'Please type a valid address';
                              }
                              return null;
                            },
                            controller: _address,
                          ),
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

                              email=_email.text;
                              address=_address.text;
                              password=_password.text;
                              mobile=_mobile.text;
                              submit();

                            });

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
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/4.8, right:  MediaQuery.of(context).size.width/4.8, top: MediaQuery.of(context).size.height/80, bottom: MediaQuery.of(context).size.height/80,))
        ],
      ),
    );
  }
void submit(){
    if(formkey.currentState.validate()){
      Navigator.of(context).pop();
      Scaffold.of(context).showSnackBar(SnackBar(content: Text("Order Processing....",style: TextStyle(fontSize: 16),),
     shape: StadiumBorder(),
      ));
      _launchEmail(widget.name,widget.Count.toString(),email,password,mobile,address);

    }
  }




  _launchEmail(String name,String Count,String email1,String password1,String mobile1,String address1) async {
    String username = email1;
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
      print('Message sent: ' + sendReport.toString() );
      Navigator.push(context, MaterialPageRoute(builder: (context)=>SuccessScreen()));
    } on MailerException catch (e) {
      print('Message not sent.');
      Scaffold.of(context).showSnackBar(SnackBar(content: Text('Something went wrong...',style: TextStyle(fontSize: 16),),shape: StadiumBorder(),backgroundColor: Colors.red,));
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
    }
  }

}























