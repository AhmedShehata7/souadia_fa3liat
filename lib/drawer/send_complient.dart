
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';

import 'contact_us.dart';

class SendComplient extends StatefulWidget {
  @override
  _SendComplientState createState() => _SendComplientState();
}

class _SendComplientState extends State<SendComplient> {
  void ShowBottomSheet(){
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topRight: Radius.circular(70),topLeft: Radius.circular(30)),

        ),
        backgroundColor: Colors.white,

        context: context,
        builder: (BuildContext context){
          return Container(
            height: double.maxFinite,


            child: Container(

              padding: EdgeInsets.only(right: 20,left: 20),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Text('ارسال شكوى او استفسار',style: TextStyle(
                      fontSize: 20
                  ),),
                  Form(
                    child: Column(
                      children: <Widget>[
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            validator: (val) {},
                            onSaved: (val) {},
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50.0),
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.blueGrey,
                                    style: BorderStyle.solid),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100.0),
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.blueGrey,
                                    style: BorderStyle.solid),
                              ),
                              labelText: ' اسم المستخدم',
                              labelStyle: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            validator: (val) {},
                            onSaved: (val) {},
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50.0),
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.blueGrey,
                                    style: BorderStyle.solid),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100.0),
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.blueGrey,
                                    style: BorderStyle.solid),
                              ),
                              labelText: ' البريد الالكترونى',
                              labelStyle: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: 50,
                            ),
                            validator: (val) {},
                            onSaved: (val) {},
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50.0),
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.blueGrey,
                                    style: BorderStyle.solid),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(70.0),
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.blueGrey,
                                    style: BorderStyle.solid),
                              ),
                              labelText: ' نص الرساله',
                              labelStyle: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            RaisedButton(
                              color: Colors.cyanAccent,
                              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) => ContactUs())),

                              child: Text("تأكيد",style: TextStyle(
                                  fontSize: 20
                              ),),
                            ),

                            FlatButton(

                              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) => ContactUs())),

                              child: Text("الغاء",style: TextStyle(
                                fontSize: 20,
                                color: Colors.red,

                              ),),
                            ),
                          ],

                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }

    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              width: double.infinity,

              padding: EdgeInsets.only(top: 309,right: 20,left: 40),
//            alignment: Alignment.lerp(Alignment.topLeft, Alignment.center, 60),

//
//            margin: EdgeInsets.only(left: 20,right: 20,),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Image.asset("images/pink_shape.png",width: 40,
                      color: Colors.pink,),
                  ),
                  Form(
                    child: Column(
                      children: <Widget>[
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            validator: (val) {},
                            onSaved: (val) {},
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50.0),
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.blueGrey,
                                    style: BorderStyle.solid),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100.0),
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.blueGrey,
                                    style: BorderStyle.solid),
                              ),
                              labelText: ' العنوان',
                              labelStyle: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            validator: (val) {},
                            onSaved: (val) {},
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50.0),
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.blueGrey,
                                    style: BorderStyle.solid),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100.0),
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.blueGrey,
                                    style: BorderStyle.solid),
                              ),
                              labelText: ' رقم الجوال',
                              labelStyle: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            validator: (val) {},
                            onSaved: (val) {},
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50.0),
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.blueGrey,
                                    style: BorderStyle.solid),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(70.0),
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.blueGrey,
                                    style: BorderStyle.solid),
                              ),
                              labelText: ' البريد الالكترونى',
                              labelStyle: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Image.asset(
                              "images/insta.png",
                              width: 30,
                            ),
//                            Padding(
//                              padding: EdgeInsets.only(right: 20),
//                            ),
                            Image.asset(
                              "images/facebook.png",
                              width: 30,
                            ),
//                            Padding(
//                              padding: EdgeInsets.only(right: 20),
//                            ),

                            Image.asset(
                              "images/twitter.png",
                              width: 30,
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        FlatButton(
//                          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
//                              builder: (BuildContext context) => SendComplient())),
                          onPressed: ShowBottomSheet,

                          child: Text("ارسال شكوى او استفسار",style: TextStyle(
                              fontSize: 20
                          ),),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          ClipPath(
            clipper: MyClipper(),
            child: Container(
              margin: EdgeInsets.only(top: 25),
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/bg_color_vectors.png'),
                    fit: BoxFit.cover),
              ),
              child: Column(
                  children: <Widget>[
                    Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              "اتصل بنا",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                          ),
//
                          Padding(padding: EdgeInsets.only(right: 10)),

                        ]),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    var controlPoint = Offset(0, size.height);
    var endPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy - 150, endPoint.dx, endPoint.dy - 100);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
