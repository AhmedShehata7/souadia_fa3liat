import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationDrawer extends StatelessWidget {
  static const routeName= "/notification";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Text("ANY THING",textAlign: TextAlign.center,style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          height: 10,

        ),),
      ),
    );
  }
}
