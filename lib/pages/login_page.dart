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
// Make sure to import the routes file

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;
  final _formKey = GlobalKey<FormState>();

  Future<void> moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changedButton = true;
      });

      await Future.delayed(Duration(seconds: 1));

      await Navigator.pushNamed(context, Myroutes.homeroute);

      setState(() {
        changedButton = false;
      });
    }
  }
  // 1.singleChildScrollView widget = is used to create a scrollable container .
  //2.BoxFit  define how an image should be inscribed into a box.
  //3.onChanged property is a callback function that is invoked 
  //whenever the content of the input field changes
  //4.InkWell is a Material Design widget that provides a visual splash effect when tapped LIKE FEEDBACK

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/undraw_Mobile_login_re_9ntv (1).png",
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20.0),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Username cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.length < 6) {
                          return "Password should be at least 6 characters long";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20.0),
                    Material(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(changedButton ? 50 : 8),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changedButton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: changedButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}