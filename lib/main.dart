import 'package:firstapp/pages/home_page.dart';
import 'package:firstapp/pages/login_page.dart';
import 'package:firstapp/utility/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
//widgets is a blocks that user interacts with
//BuildContext tell the location of widget in a widget tree
// Material App having structure and functionality of app
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
      debugShowCheckedModeBanner: false,
      initialRoute: Myroutes.homeroute,
      routes: {
        "/":(context) => LoginPage(),
        Myroutes.homeroute: (context) => Home(),
        Myroutes.loginroute:(context) => LoginPage()
      },
    );
  }
}
