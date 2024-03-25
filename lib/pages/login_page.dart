import 'dart:convert';

import 'package:firstapp/utility/routes.dart';
import 'package:flutter/material.dart';

// class LoginPage extends StatelessWidget{
// Widget build(BuildContext context){
//   return Material(
//     child: Center(
//       child: Text(
//         "Login page ",
//          style: TextStyle(
//         fontSize: 20,
//         color: Colors.blue,
//         fontWeight: FontWeight.bold,
//       ),
//       //textScaleFactor: 3.0,
//       ),
//     ),
//   );
// }
// }
class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name ="";  bool changedbutton = false;
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/images/undraw_Mobile_login_re_9ntv (1).png",
          fit:BoxFit.cover,
          
           ),
           SizedBox(height: 20.0,),
           Text("WELCOME $name", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(height: 20.0,),
           Padding(padding: const EdgeInsets.symmetric(horizontal: 32.0,vertical: 16.0),
           child: Column(children: [
            TextFormField(
              decoration: InputDecoration(hintText: "Enter Username", labelText: "Username",
              ),
              onChanged:(value) {
                name = value;
                setState(() {});
              },
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(hintText: "Enter password", labelText: "password"),
            ),
            SizedBox(height: 20.0,),
            // ElevatedButton(onPressed: (){Navigator.pushNamed(context, Myroutes.homeroute);}, child: Text("Login"),style:TextButton.styleFrom(),
            //  ),
            InkWell(
            onTap:() async {
              setState(() {
                changedbutton = true;
              });
              await(Future.delayed(
                Duration(seconds: 1)
              ));
              Navigator.pushNamed(context, Myroutes.homeroute);
              
            },
            
           child: AnimatedContainer(
            duration: Duration(seconds: 1),
            height :50,
            width: changedbutton?50 :100,
            //color:Colors.blue ,
            alignment: Alignment.center,
            child: changedbutton? Icon(Icons.done , color: Colors.white,) :Text("Login", style: TextStyle(color: Colors.white  , fontSize: 18 , fontWeight: FontWeight.bold,
            ),
            ),
            decoration: BoxDecoration(color: changedbutton?Colors.green :Colors.blue , 
            //borderRadius: BorderRadius.circular(8),
            shape: changedbutton?BoxShape.circle : BoxShape.rectangle,
            ),

           ),
            ),
             
           ],
           ),
           ),
          
        ],
      ),
      ),
    );
  }
}
