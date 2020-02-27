import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Carousel page.dart';

class SecondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SecondPageState();
  }
}

class SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          InkWell(
            child: Ink.image(
              image: AssetImage('images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 60, right: 20),
                child: Image.asset(
                  'images/big_logo.png',
                  width: 100,
                  filterQuality: FilterQuality.high,
                ),
                alignment: Alignment.topCenter,
              ),
              InkWell(
                child: Container(
                  padding: EdgeInsets.only(top: 170, right: 100),
                  child: Image.asset(
                    'images/arabic_language.png',
                    width: 100,
                    filterQuality: FilterQuality.high,),
                  alignment: Alignment.center,

                ),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Carousel())),
              ),
              Container(
                padding: EdgeInsets.only(left: 90),
                child: Image.asset(
                  'images/en_language.png',
                  width: 100,
                  filterQuality: FilterQuality.high,
                ),
                alignment: Alignment.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
