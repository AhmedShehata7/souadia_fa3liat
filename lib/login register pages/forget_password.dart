import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:souadia_fa3liat/login%20register%20pages/reset%20password.dart';

class ForgetPassword extends StatefulWidget {
  static const routeName = "/Forget";
  @override
  State<StatefulWidget> createState() {
    return ForgetPasswordState();
  }
}

class ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        elevation: 0,
//        leading: IconButton(icon:Icon( Icons.arrow_back_ios)
//            , onPressed: (){
//          Navigator.of(context).pop();
//            }
//        ),
//
//      ),
      body: Stack(
        children: <Widget>[
          InkWell(
            child: Ink.image(
              image: AssetImage('images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              bottom: 280,
            ),
            alignment: Alignment.bottomCenter,
            child: Ink.image(
                image: AssetImage('images/small_logo.png'),
                width: 80,
                height: 460,
                alignment: Alignment.center),
          ),
          Center(


            child:Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    style: TextStyle(
                      color: Colors.white
                    ),
                    cursorColor: Colors.white,

                    decoration: InputDecoration(


                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(
                            width: 2,
                            color: Colors.white,
                            style: BorderStyle.solid),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(
                            width: 2,
                            color: Colors.white,
                            style: BorderStyle.solid),
                      ),
                      prefix: Image.asset(
                        'images/blue_phone.png',
                        height: 20,
                        width: 20,
                      ),
                      filled: true,
                      contentPadding: EdgeInsets.all(20),

                      labelText: 'رقم الجوال/البريد الالكترونى ',
                      labelStyle: TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 20,
                      ),

                    ),
                    textAlign: TextAlign.right,

                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    color: Colors.cyan,
                      child: Text("ارسال",style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                      onPressed:(){
                        Navigator.of(context).pushNamed(ResetPassword.routeName);
                      }
                  ),

                ],
              ),
            ) ,
          ),
        ],
      ),
    );
  }
}
