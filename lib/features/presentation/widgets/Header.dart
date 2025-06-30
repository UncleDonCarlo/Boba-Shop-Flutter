// ignore: file_names
import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget{
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("DonCarlo"),
      titleTextStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      backgroundColor: Colors.blueAccent,
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer(); // Open the drawer when the menu icon is pressed
        },
      ),
      leadingWidth: 50,
      actionsIconTheme: IconThemeData(color: Colors.white, size: 30),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            // Action to perform when the search icon is pressed
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
