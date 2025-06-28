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
      leading: Icon(Icons.menu),
      leadingWidth: 50,
      actionsIconTheme: IconThemeData(color: Colors.white, size: 30),
      actions: [
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
            // Action for notifications button
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
