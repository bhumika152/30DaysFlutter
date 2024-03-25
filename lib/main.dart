import 'package:firstapp/pages/home_page.dart';
import 'package:firstapp/pages/login_page.dart';
import 'package:firstapp/utility/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.dark,
      
      darkTheme: ThemeData(
        brightness: Brightness.light,
        
        appBarTheme: AppBarTheme(
          color: Colors.blue, // Specify color for app bar in dark theme
        ),
      
      ),
      //initialRoute: "/home",
      routes: {
        "/":(context) => LoginPage(),
        Myroutes.homeroute: (context) => Home(),
        Myroutes.loginroute:(context) => LoginPage()
      },
    );
  }
}
