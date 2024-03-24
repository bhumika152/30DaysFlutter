import 'dart:convert';

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
class LoginPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/undraw_Mobile_login_re_9ntv (1).png",
          fit:BoxFit.cover,
          
           ),
           SizedBox(height: 20.0,),
           Text("WELCOME", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(height: 20.0,),
           Padding(padding: const EdgeInsets.symmetric(horizontal: 32.0,vertical: 16.0),
           child: Column(children: [
            TextFormField(
              decoration: InputDecoration(hintText: "Enter Username", labelText: "Username"),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(hintText: "Enter password", labelText: "password"),
            ),
            SizedBox(height: 20.0,),
            ElevatedButton(onPressed: (){print("hey bhumika");}, child: Text("Login"),style:TextButton.styleFrom(),
             ),
             
           ],
           ),
           ),
          
        ],
      ),
    );
  }
}
