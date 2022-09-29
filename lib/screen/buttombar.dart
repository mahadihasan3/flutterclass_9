import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class bottombar extends StatefulWidget {
  const bottombar({Key? key}) : super(key: key);

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  List<Widget> _listitem = [
    Icon(Icons.home),
    Icon(Icons.favorite_outline),
    Icon(
      Icons.shopping_bag_rounded,
      size: 35,
      color: Colors.white,
    ),
    Icon(Icons.notifications_none),
    Icon(Icons.person_outline),
  ];

  int idemcunt = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.orange,
        items: _listitem,
        index: idemcunt,
        backgroundColor: Color(0xFFF5F5F7),
        height: 60,
      ),
      body: Center(
        child: Text("data"),
      ),
    );
  }
}
