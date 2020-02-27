import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:souadia_fa3liat/login%20register%20pages/login.dart';
import 'package:souadia_fa3liat/widget/slide_dots.dart';
import 'package:souadia_fa3liat/widget/slide_item.dart';
import 'package:souadia_fa3liat/model/slide_model.dart';
import '../widget/slide_item.dart';


class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int _currentpage=0;
  final PageController _pagecontroller = PageController(
      initialPage: 0
  );
  @override
  void initState() {

    super.initState();
    Timer.periodic(Duration(seconds: 5),(Timer timer){
      if(_currentpage<2){
        _currentpage++;
      }
      else{
        _currentpage=0;
      }
     _pagecontroller.animateToPage(_currentpage, duration: Duration(microseconds: 300), curve: Curves.easeIn);
    });
    
  }
  @override
  void dispose() {

    super.dispose();
    _pagecontroller.dispose();
  }
  _onPageChanged(int index){
 setState(() {
   _currentpage=index;
 });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,

        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
            children: <Widget>[
              PageView.builder(
                scrollDirection: Axis.horizontal,
                pageSnapping: false,
                controller: _pagecontroller,
                itemCount: slideList.length,
                onPageChanged: _onPageChanged,
                itemBuilder: (context, item) => SlideItem(item),
              ),
              Stack(
                alignment: AlignmentDirectional.topStart,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        for(int item=0;item<slideList.length;item++)
                          if(item==_currentpage)
                            SlideDot(true)
                        else
                          SlideDot(false)
                      ],
                    ),


                  ),
                ],
              ),
            ],


                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      FlatButton(
                        color: Theme.of(context).primaryColor,
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(
                              width: 2,
                              color: Colors.white,
                              style: BorderStyle.solid),
                        ),
                        child: Text(
                          "دخول",
                          style: TextStyle(fontSize: 18),

                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed(LoginScreen.routeName);
                        },
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
