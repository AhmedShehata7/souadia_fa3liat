import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:souadia_fa3liat/drawer/notification.dart';
import 'package:souadia_fa3liat/bootom_navigation_bar/profile.dart';
import 'package:souadia_fa3liat/drawer/menu_drawer.dart';


class Event extends StatefulWidget {
  static const routeName = "/event";


  @override
  EventState createState() => EventState();
}

class EventState extends State<Event> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xff121320),
      key: _scaffoldKey,

      endDrawer:MyDrawer() ,

      body: Container(


        child: Column(
          children: <Widget>[

            ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
              child: Stack(

                alignment: Alignment.topLeft,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(20)),
                  Image.asset(
                    'images/slider.png',

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(

                        padding: const EdgeInsets.only(left: 10,top: 22),
                        child: InkWell(

                          child: (
                              Image.asset("images/notification.png",scale: 3,)
                          ),
                          onTap: (){
                            Navigator.of(context).pushNamed(NotificationDrawer.routeName);
                          },

                        ),
                      ),
                      Padding(

                        padding: const EdgeInsets.only(left: 10,top: 23,right: 10),
                        child: InkWell(

                          child: (
                              Image.asset("images/menu.png",scale: 3,)
                          ),
                          onTap: (){
                            _scaffoldKey.currentState.openEndDrawer();
                          },

                        ),
                      ),
                    ],
                  )


                ],

              ),


            ),

            Expanded(
              child: GridView.count(
                padding: EdgeInsets.only(top: 15,left: 10,right: 10,bottom: 2),
                crossAxisCount: 2,
                childAspectRatio: 1,
                crossAxisSpacing: 6,
                children: <Widget>[
                  Card(

                    child: Image.asset("images/pic_one.png"),

                    borderOnForeground: true,  ),

                  Card(
                    child: Image.asset("images/pic_three.png"),
                  ),

                  Card(
                    child: Image.asset("images/pic_four.png"),
                  ),
                  Card(
                    child: Image.asset("images/pic_five.png"),
                  ),
                  Card(
                    child: Image.asset("images/pic_seven.png"),
                  ),
                  Card(
                    child: Image.asset("images/pic_six.png"),

                  ),


                ],
              ),
            )

          ],
        ),


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
