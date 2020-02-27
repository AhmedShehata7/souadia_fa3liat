import 'package:souadia_fa3liat/drawer/about%20_app.dart';
import 'package:souadia_fa3liat/drawer/change_language.dart';
import 'package:souadia_fa3liat/drawer/contact_us.dart';
import 'package:souadia_fa3liat/drawer/terms.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:souadia_fa3liat/gui/Home.dart';
import 'package:souadia_fa3liat/home_screen/Event.dart';


class MyItemDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
         ListTile(
            trailing: Image.asset("images/home.png",
            height: 30,),
            title: Text("الرئيسيه",textAlign: TextAlign.right,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
            ),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Event())),
            
          ),
        ListTile(
          trailing: Image.asset("images/filter.png",
            height: 30,),
          title: Text("الهيئات",textAlign: TextAlign.right,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          onTap: () {

          }

        ),
        ListTile(
          trailing: Image.asset("images/save_event.png",
            height: 30,),
          title: Text("عن التطبيق",textAlign: TextAlign.right,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => AboutApp())),

        ),
        AbsorbPointer(
          ignoringSemantics: false,
          absorbing: true,
          child: ListTile(
            trailing: Image.asset("images/share_app.png",
              height: 30,),
            title: Text("مشاركه التطبيق",textAlign: TextAlign.right,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            onTap: () {}

          ),
        ),
        ListTile(
          trailing: Image.asset("images/terms.png",
            height: 30,),
          title: Text("احكام وشروط",textAlign: TextAlign.right,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => Terms())),

        ),
        ListTile(
          trailing: Image.asset("images/contact_us.png",
            height: 40,),
          title: Text("اتصل بنا",textAlign: TextAlign.right,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => ContactUs())),

        ),
        ListTile(
          trailing: Image.asset("images/setting.png",
            height: 30,),
          title: Text("اعدادات",textAlign: TextAlign.right,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => ChangePass())),

        ),
        ListTile(
          trailing: Image.asset("images/logout.png",
            height: 30,),
          title: Text("تسجيل الخروج",textAlign: TextAlign.right,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => Home())),

        ),

      ],
    );
  }
}


