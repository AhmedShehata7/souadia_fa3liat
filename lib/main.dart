import 'package:flutter/material.dart';
import 'package:souadia_fa3liat/drawer/menu_drawer.dart';
import 'bootom_navigation_bar/edit_profile.dart';
import 'bootom_navigation_bar/profile.dart';
import 'drawer/notification.dart';
import 'gui/Home.dart';
import 'home_screen/Event.dart';
import 'login register pages/forget_password.dart';
import 'login register pages/login.dart';
import 'login register pages/register.dart';
import 'login register pages/reset password.dart';






void main(){

//  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_){
  runApp(MaterialApp(
    title: "welcome to fa3liat app",
    home: new Home(),
//        home: Terms(),
    debugShowCheckedModeBanner: false,
    routes: {
      LoginScreen.routeName:(context)=>LoginScreen(),
      Register.routeName:(context)=>Register(),
      ResetPassword.routeName:(context)=>ResetPassword(),
      ForgetPassword.routeName:(context)=>ForgetPassword(),
      Event.routeName:(context)=>Event(),
      Profile.routeName:(context)=>Profile(),
      EditProfile.routeName:(context)=>EditProfile(),
      NotificationDrawer.routeName:(context)=>NotificationDrawer(),

    },

  ));
//  });

}
