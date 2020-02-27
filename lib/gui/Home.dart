import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:souadia_fa3liat/gui/second%20page.dart';


class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomeState();
  }
}

class HomeState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => SecondPage())),
            child: Ink.image(
              image: AssetImage('images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Ink.image(
              image: AssetImage('images/small_logo.png'),
              width: 100,

//            alignment: Alignment.centerLeft,
            ),
          ),
        ],
      ),
    );
  }
}
