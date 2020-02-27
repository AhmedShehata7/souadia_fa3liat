import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:souadia_fa3liat/model/slide_model.dart';

class SlideItem extends StatelessWidget{
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {

    return Container(
      child:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      slideList[index].imageUrl,
                    ),
                    fit: BoxFit.cover,
                  )),

            ),
            SizedBox(height: 40,),
            Text(slideList[index].title,
              style: TextStyle(
              fontSize: 22,
              color: Theme.of(context).primaryColor,
            ),),
            SizedBox(height: 10,),
            Text(slideList[index].description,
              textAlign: TextAlign.center,
              style: TextStyle(

              ),

            ),

          ],
        ),
      ),
    );
  }

}