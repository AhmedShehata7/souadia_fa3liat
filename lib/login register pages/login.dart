import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:souadia_fa3liat/home_screen/Event.dart';
import 'package:souadia_fa3liat/login%20register%20pages/forget_password.dart';
import 'package:souadia_fa3liat/login%20register%20pages/register.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "/Register";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
// final textController =TextEditingController();
// final GlobalKey <FormState>formkey = new GlobalKey<FormState>();
// String email,phoneNumber,password;
//
// login(){
//   final formData=formkey.currentState;
//   if(formData.validate()){
//     Navigator.of(context).pushNamed(Event.routeName);
//   }
// }

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
          Container(

            child: Ink.image(
              image: AssetImage('images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              bottom: 250,
            ),
            alignment: Alignment.bottomCenter,
            child: Ink.image(
                image: AssetImage('images/small_logo.png'),
                width: 80,
                height: 460,
                alignment: Alignment.center),
          ),

//          Padding(
//            padding: EdgeInsets.only(top: 300),
//          ),

//            padding: EdgeInsets.only(top:300),
          SingleChildScrollView(

            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 340),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,

//              mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                      alignment: Alignment.center,
                      child: TextFormField(
//                          onSaved: (val){
//                            email=val;
//                          },

//                              validator: (val){
//                                if(val.isEmpty){
//                                  return ("please enter your email or valid number");
//
//                                }
//
//
//                              },
                        style: TextStyle(color: Colors.white),
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
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                      child: TextFormField(
//                          validator: (val){
//                            if(val.isEmpty){
//                              return("password can not be empty");
//
//                            }
//                           else if(val.length<4){
//                             return 'password at least 8 chracter';
//                            }
//
//
//
//                          },
//                          onSaved: (val){
//                            password=val;
//                          },
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
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
                            'images/blue_lock.png',
                            height: 15,
                            width: 15,
                          ),
                          labelText: 'كلمه المرور ',
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          counter: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FlatButton(
                                  child: Text(
                                    "نسيت كلمه المرور",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed(ForgetPassword.routeName);
                                  }),
                              Padding(
                                  padding: EdgeInsets.only(left: 40, right: 43)),
                              FlatButton(
                                child: Text(
                                  "دخول كزائر",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(Event.routeName);
                                },
                              ),
                            ],
                          ),
                          filled: true,
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    padding: EdgeInsets.all(10),
                    color: Colors.cyanAccent,
                    child: Text(
                      "دخول",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
//                shape: OutlineInputBorder(
//                    borderSide: BorderSide(color: Colors.white, width: 2)),
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(width: 2, style: BorderStyle.solid),
                    ),

                    onPressed: () {
                      Navigator.of(context).pushNamed(Event.routeName);
                    },
//                    onPressed: ()=>login,
                  ),
                  Row(
//                    padding: EdgeInsets.only(top: 401),
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      FlatButton(
                        child: Text(
                          "تسجيل",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(
                              width: 2,
                              style: BorderStyle.solid,
                              color: Colors.cyanAccent),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed(Register.routeName);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
