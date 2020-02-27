import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:souadia_fa3liat/drawer/menu_drawer.dart';
import 'package:souadia_fa3liat/home_screen/Event.dart';
import 'edit_profile.dart';
class Profile extends StatefulWidget {
  static const routeName = "/profile";

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      endDrawer:MyDrawer(),
      body: Column(



        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              width: 400,
              height: 260,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image:AssetImage('images/profile_pic.png'),fit: BoxFit.cover ),),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 70,left: 10)),
                        InkWell(

                          child: (
                              Image.asset("images/edit.png",scale: 2,)
                          ),
                          onTap: (){
                            Navigator.of(context).pushNamed(EditProfile.routeName);
                          },

                        ),
                        Padding(padding: EdgeInsets.only(left: 250,top: 85)),
                        InkWell(

                          child: (
                              Image.asset("images/menu.png",scale: 2,)
                          ),
                          onTap: (){
                            Navigator.of(context).pushNamed(Event.routeName);
                          },

                        ),

                      ],
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

                  style: TextStyle(
                      color: Colors.black
                  ),
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

                  style: TextStyle(
                      color: Colors.black
                  ),
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

                  style: TextStyle(
                      color: Colors.black
                  ),
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
      bottomNavigationBar: CurvedNavigationBar(


        animationDuration: Duration(
          milliseconds: 200,
        ),
        animationCurve: Curves.bounceInOut,
        color: Color(0xff121320),
        backgroundColor: Colors.white,
        items: <Widget>[
          InkWell(
              onTap:(){
                Navigator.of(context).pushNamed(Profile.routeName);
              },
              child: Icon(Icons.person, size: 30,color: Colors.white,)
          ),
          InkWell(
              child: Icon(Icons.bookmark_border, size: 30,color: Colors.white,)),
          InkWell(
              child: Icon(Icons.search, size: 30,color: Colors.white,)),
          InkWell(
              child: Icon(Icons.calendar_today, size: 30,color: Colors.white,)),
          InkWell(
              onTap:(){
                Navigator.of(context).pushNamed(Event.routeName);
              },
              child: Icon(Icons.home, size: 30,color: Colors.white,)),


        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path =Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width/2, size.height-100,size.width,size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {

    return true;
  }

}


