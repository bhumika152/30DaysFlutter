import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlRDfA2VUcmsqWekeKN9spEzlcYW9sCZ46rEdtJqY0pZZh6Ym18hE-IYQq5BLw6kcDMH8&usqp=CAU";

    return Drawer(
      child: Container(
        color: Colors.blueAccent,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blueAccent),
                margin: EdgeInsets.zero,
                accountName: Text("Bhumika Raheja"),
                accountEmail: Text("braheja248@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text("Home",
              
              style: TextStyle(
                
                color: Colors.white,
              ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text("Profile",
              style: TextStyle(
              
                color: Colors.white,
              ),
              
              
            ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text("E-mail",
              style: TextStyle(
               
                color: Colors.white,
              ),
              
              
            ),
            ),
          ],
        ),
      ),
    );
  }
}
