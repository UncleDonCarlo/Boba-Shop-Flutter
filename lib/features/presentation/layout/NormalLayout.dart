// ignore: file_names
import 'package:flutter/material.dart';
import 'package:learning_flutter/features/presentation/pages/home.dart';
import 'package:learning_flutter/features/presentation/widgets/Header.dart';

class NormalLayout extends StatelessWidget {
  const NormalLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Center(child: Home()),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: MediaQuery.removePadding(
        context: context,
        removeBottom: true,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                iconSize: MediaQuery.of(context).size.width * 0.08,
                onPressed: () {
                  // Action to perform when the home icon is pressed
                },
              ),
              IconButton(
                icon: Icon(Icons.search),
                iconSize: MediaQuery.of(context).size.width * 0.08,
                onPressed: () {
                  // Action to perform when the search icon is pressed
                },
              ),
              IconButton(
                icon: Icon(Icons.notifications),
                iconSize: MediaQuery.of(context).size.width * 0.08,
                onPressed: () {
                  // Action to perform when the notifications icon is pressed
                },
              ),
              IconButton(
                icon: Icon(Icons.account_circle),
                iconSize: MediaQuery.of(context).size.width * 0.08,
                onPressed: () {
                  // Action to perform when the account icon is pressed
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
