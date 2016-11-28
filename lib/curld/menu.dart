import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new Block(
        children: [
          new Text('Home'),
          new Text('Home'),
          new Text('Home'),
          new Text('Home'),
        ]
      )
    );
  }
}
