


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlideDot extends StatelessWidget {
  bool isActiv;
  SlideDot(this.isActiv);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal:10),
      height: isActiv ?12:8,
      width:  isActiv ?12:8,
      color: isActiv ?Colors.pink:Colors.black12,
//      decoration: BoxDecoration(
//        borderRadius: BorderRadius.all(Radius.circular(12)),
//
//      ),



    );
  }
}
