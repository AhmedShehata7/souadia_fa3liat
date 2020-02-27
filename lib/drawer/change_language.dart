import 'package:souadia_fa3liat/bootom_navigation_bar/profile.dart';
import 'package:souadia_fa3liat/home_screen/Event.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ChangePass extends StatefulWidget {
  @override
  _ChangePassState createState() => _ChangePassState();
}

class _ChangePassState extends State<ChangePass> {
  void showBottomSheetLanguage() {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(50), topLeft: Radius.circular(50)),
        ),
        backgroundColor: Colors.white,
        builder: (BuildContext context) {
          return Container(
            height: 320,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'اختر لغه التطبيق',
                    style: TextStyle(fontSize: 20),
                  ),
                  Form(
                    child: Column(
                      children: <Widget>[
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
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
                              labelText: ' العربيه',
                              labelStyle: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: 20,
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
                              labelText: 'الانجليزيه',
                              labelStyle: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            RaisedButton(
                              color: Colors.cyanAccent,
                              onPressed: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          ChangePass())),
                              child: Text(
                                "تأكيد",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            FlatButton(
                              onPressed: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          ChangePass())),
                              child: Text(
                                "الغاء",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  void showBottomSheetPassword() {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(50), topLeft: Radius.circular(50)),
        ),
        builder: (BuildContext context) {
          return Container(
            height: 320,
            child: Container(
              margin: EdgeInsets.only(top: 30, left: 25, right: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Form(
                    child: Column(
                      children: <Widget>[
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            obscureText: true,
                            cursorColor: Colors.cyanAccent,
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
                                    color: Colors.cyan,
                                    style: BorderStyle.solid),
                              ),
                              labelText: 'كلمه المرور الحاليه ',
                              labelStyle: TextStyle(
                                color: Colors.cyanAccent,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: 20,
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
                              labelText: 'كلمه المرور الجديده',
                              labelStyle: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: 20,
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
                              labelText: 'تأكيد كلمه المرور',
                              labelStyle: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            RaisedButton(
                              color: Colors.cyanAccent,
                              onPressed: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Profile())),
                              child: Text(
                                "تأكيد",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            FlatButton(
                              onPressed: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          ChangePass())),
                              child: Text(
                                "الغاء",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
//              width: double.infinity,
              padding: EdgeInsets.only(top: 200, right: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      FlatButton(
                        child: Text(
                          "اللغه",
                          style:
                          TextStyle(fontSize: 30, color: Colors.blueGrey),
                        ),
                        autofocus: true,
                        onPressed: showBottomSheetLanguage,
                      ),
                      Image.asset(
                        "images/blue_shape.png",
                        width: 20,
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.end,
                  ),
                  Image.asset(
                    "images/line.png",
                    fit: BoxFit.cover,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      FlatButton(
                        child: Text(
                          "تغيير كلمه المرور",
                          style:
                          TextStyle(fontSize: 30, color: Colors.blueGrey),
                        ),
                        onPressed: showBottomSheetPassword,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        "images/pink_shape.png",
                        width: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    "images/line.png",
                    fit: BoxFit.cover,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      FlatButton(
                        child: Text(
                          "غلق الاشعارات",
                          style:
                          TextStyle(fontSize: 30, color: Colors.blueGrey),
                        ),
                        onPressed: null,
                      ),
                      Image.asset(
                        "images/blue_shape.png",
                        width: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
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
                          "اتصل بنا",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ),

                      Padding(padding: EdgeInsets.only(right: 10)),
                      InkWell(

                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (BuildContext context) => Event())),
                        child: Image.asset(
                          "images/right.png",
                          alignment: Alignment.topCenter,
                          width: 20,
                        ),
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "هذا النص هو مثال لنص يمكن ان يستبدل قى نفس المساحه",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
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
        controlPoint.dx, controlPoint.dy - 150, endPoint.dx, endPoint.dy - 120);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

