import 'package:souadia_fa3liat/home_screen/Event.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';

class Terms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              margin: EdgeInsets.only(top: 25),
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/bg_color_vectors.png'),
                    fit: BoxFit.cover),
              ),
              child: Column(
                children: <Widget>[
                  Row(

                    children: <Widget>[
                      Expanded(

                        child: Text(

                          "احكام وشروط",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ),
//
                    Padding(padding: EdgeInsets.only(right: 10)),
                      InkWell(
                        onTap:  () => Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => Event())),
                        child: Image.asset(
                          "images/right.png",
                          alignment: Alignment.topCenter,
                          width: 10,
                        )
                        ,
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  SizedBox(height: 20,),

                  Center(
                    child: Text("هذا النص هو مثال لنص يمكن ان يستبدل قى نفس المساحه",style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                    ),),
                  )

                ],
              ),
            ),
          ),
          Container(
            color: Colors.white12,
            child: Column(
              children: <Widget>[
                Row(

                  mainAxisAlignment: MainAxisAlignment.end,

                  children: <Widget>[




//                    Text("هذا النص هو مثال لنص يمكن ان يستبدل فى نفس المساحه "
//                        "لقد تم توليد هذا النص من مولد النص العربى ",
//                      textAlign: TextAlign.end,
//                       maxLines: 2,
//                    ),
                    Text("هذا النص هو مثال لنص يمكن ان يستبدل فى نفس المساحه",
                      style: TextStyle(
                      color: Colors.blueGrey
                    ),),
                    Padding(padding: EdgeInsets.only(right: 15)),
                    Image.asset("images/blue_shape.png",width: 25,
                    ),
                    Padding(padding: EdgeInsets.only(right: 10,left: 10)),

                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(

                  mainAxisAlignment: MainAxisAlignment.end,

                  children: <Widget>[




//                    Text("هذا النص هو مثال لنص يمكن ان يستبدل فى نفس المساحه "
//                        "لقد تم توليد هذا النص من مولد النص العربى ",
//                      textAlign: TextAlign.end,
//                       maxLines: 2,
//                    ),
                  Text("هذا النص هو مثال لنص يمكن ان يستبدل فى نفس المساحه",style: TextStyle(
                    color: Colors.blueGrey
                ),),
                    Padding(padding: EdgeInsets.only(right: 15)),
                    Image.asset("images/pink_shape.png",width: 25,
                    ),
                    Padding(padding: EdgeInsets.only(right: 10,left: 10)),

                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(

                  mainAxisAlignment: MainAxisAlignment.end,

                  children: <Widget>[




//                    Text("هذا النص هو مثال لنص يمكن ان يستبدل فى نفس المساحه "
//                        "لقد تم توليد هذا النص من مولد النص العربى ",
//                      textAlign: TextAlign.end,
//                       maxLines: 2,
//                    ),
                    Text("هذا النص هو مثال لنص يمكن ان يستبدل فى نفس المساحه",style: TextStyle(
                        color: Colors.blueGrey
                    ),),
                    Padding(padding: EdgeInsets.only(right: 15)),
                    Image.asset("images/blue_shape.png",width: 25,
                    ),
                    Padding(padding: EdgeInsets.only(right: 10,left: 10)),

                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(

                  mainAxisAlignment: MainAxisAlignment.end,

                  children: <Widget>[




//                    Text("هذا النص هو مثال لنص يمكن ان يستبدل فى نفس المساحه "
//                        "لقد تم توليد هذا النص من مولد النص العربى ",
//                      textAlign: TextAlign.end,
//                       maxLines: 2,
//                    ),
                    Text("هذا النص هو مثال لنص يمكن ان يستبدل فى نفس المساحه",style: TextStyle(
                        color: Colors.blueGrey
                    ),),
                    Padding(padding: EdgeInsets.only(right: 15)),
                    Image.asset("images/pink_shape.png",width: 25,
                    ),
                    Padding(padding: EdgeInsets.only(right: 10,left: 10)),

                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(

                  mainAxisAlignment: MainAxisAlignment.end,

                  children: <Widget>[




//                    Text("هذا النص هو مثال لنص يمكن ان يستبدل فى نفس المساحه "
//                        "لقد تم توليد هذا النص من مولد النص العربى ",
//                      textAlign: TextAlign.end,
//                       maxLines: 2,
//                    ),
                    Text("هذا النص هو مثال لنص يمكن ان يستبدل فى نفس المساحه",style: TextStyle(
                        color: Colors.blueGrey
                    ),),
                    Padding(padding: EdgeInsets.only(right: 15)),
                    Image.asset("images/blue_shape.png",width: 25,
                    ),
                    Padding(padding: EdgeInsets.only(right: 10,left: 10)),

                  ],
                ),
              ],
            ),
          )
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
    var controlPoint = Offset(0, size.height);
    var endPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy - 150, endPoint.dx, endPoint.dy - 90);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
