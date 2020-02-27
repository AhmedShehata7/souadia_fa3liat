import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'myitemdrawer.dart';

class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        alignment: Alignment.topCenter,
        color:Color(0xff121320),
        child: ListView(
          children: <Widget>[
          Container(
              child:Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(top:8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'images/profile_pic.png',
                      width: 100,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  MyItemDrawer(),
                ],
              ),
          ),
          ],
        ),
      ),


    );



  }
}
