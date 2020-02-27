import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:souadia_fa3liat/bootom_navigation_bar/profile.dart';

class EditProfile extends StatefulWidget {
  static const routeName = "/edit";

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              width: 400,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/opacity_profile.png'),
                    fit: BoxFit.cover),
              ),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: InkWell(
                        child: (Image.asset(
                          "images/add_photo.png",
                          scale: 2,
                        )),
                        onTap: () {
                        },
                      ),
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 35, left: 25),
                    ),
                    Container(
                      child: InkWell(
                        child: (Image.asset(
                          "images/right.png",
                          scale: 2,
                        )),
                        onTap: () {
                          Navigator.of(context).pushNamed(Profile.routeName);
                        },
                      ),
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only( top: 1, right: 25),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              child: TextField(
                style: TextStyle(color: Colors.black),
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
                  filled: false,
                  contentPadding: EdgeInsets.all(20),
                  labelText: ' اسم المستخدم',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                  ),
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              child: TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.black),
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
                  filled: false,
                  contentPadding: EdgeInsets.all(20),
                  labelText: ' رقم الجوال',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                  ),
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.black),
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
                  filled: false,
                  contentPadding: EdgeInsets.all(20),
                  labelText: ' البريد الالكترونى',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                  ),
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
        ],
      ),
      bottomSheet: Row(
//                    padding: EdgeInsets.only(top: 401),
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FlatButton(onPressed: ()
          {
            Navigator.of(context).pushNamed(Profile.routeName);
          },

              child: Text("الغاء",style: TextStyle(
                color: Colors.red
              ),)),
          Padding(padding: EdgeInsets.only(right: 30),),
          FlatButton(
            color: Colors.cyanAccent,

            child: Text(
              "تأكيد",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(width: 2, style: BorderStyle.solid,color:Colors.cyanAccent),
            ),

            onPressed: (){
              Navigator.of(context).pushNamed(Profile.routeName);
            },

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
    path.quadraticBezierTo(
        size.width / 2, size.height - 100, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
