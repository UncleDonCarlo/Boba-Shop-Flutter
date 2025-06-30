import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
    );
  }
}
