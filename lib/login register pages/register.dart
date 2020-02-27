import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:souadia_fa3liat/login%20register%20pages/forget_password.dart';

class Register extends StatelessWidget {
  static const routeName = "/LoginScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),
      body: Stack(

        children: <Widget>[
          InkWell(
            child: Ink.image(
              image: AssetImage('images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          Container(
           padding: EdgeInsets.only(bottom: 280),
            alignment: Alignment.bottomCenter,
            child: Ink.image(
                image: AssetImage('images/small_logo.png'),
                width: 80,
                height: 460,
                alignment: Alignment.topCenter),
          ),
//          Padding(
//            padding: EdgeInsets.all(20),
//          ),

          SingleChildScrollView(

            padding: EdgeInsets.only(top:140),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: TextField(
                      style: TextStyle(
                          color: Colors.white
                      ),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(
                              width: 1,
                              color: Colors.white,
                              style: BorderStyle.solid),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100.0),
                          borderSide: BorderSide(
                              width: 2,
                              color: Colors.white,
                              style: BorderStyle.solid),
                        ),
                        prefix: Image.asset(
                          'images/blue_user.png',
                          height: 20,
                          width: 20,
                        ),
                        filled: true,
                        contentPadding: EdgeInsets.all(20),

                        labelText: ' اسم المستخدم',
                        labelStyle: TextStyle(
                          color: Colors.cyanAccent,
                          fontSize: 20,
                        ),
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: TextField(
                      style: TextStyle(
                          color: Colors.white
                      ),
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

                        labelText: 'رقم الجوال',
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: TextField(
                      style: TextStyle(
                          color: Colors.white
                      ),
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
                          'images/blue_email.png',
                          height: 20,
                          width: 20,
                        ),
                        filled: true,
                        contentPadding: EdgeInsets.all(20),

                        labelText: 'البريد الالكترونى ',
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: TextField(
                      style: TextStyle(
                          color: Colors.white
                      ),
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
                        prefix: Image.asset('images/blue_lock.png',
                            height: 15, width: 15),
                        labelText: 'كلمه المرور ',
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        filled: true,
                        contentPadding: EdgeInsets.all(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: TextField(
                      style: TextStyle(
                          color: Colors.white
                      ),

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
                        prefix: Image.asset('images/blue_lock.png',
                            height: 15, width: 15,
                        ),
                        hintText: 'تأكيد كلمه المرور,',
                        labelText: 'تأكيد كلمه المرور, ',
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),



                        filled: true,
                        contentPadding: EdgeInsets.all(10),

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
                      "تسجيل",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
//                shape: OutlineInputBorder(
//                    borderSide: BorderSide(color: Colors.white, width: 2)),
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(width: 2, style: BorderStyle.solid),
                    ),

                      onPressed:(){
                        Navigator.of(context).pushNamed(ForgetPassword.routeName);
                      }
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
