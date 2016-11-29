import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  TextStyle whiteText = new TextStyle(color: new Color.fromRGBO(255, 255, 255, 1.0));

  @override
  MenuState createState() => new MenuState();
}

class MenuState extends State<Menu> {
    @override
    Widget build(BuildContext context) {
      return new Drawer(
        child: new Container(
          decoration: new BoxDecoration(
            backgroundColor: new Color.fromRGBO(0, 0, 0, 0.8)
          ),
          child: new Block(
            children: [
              new Text('Home', style: this.config.whiteText),
              new Text('Home', style: this.config.whiteText),
              new Text('Home', style: this.config.whiteText),
              new Text('Home', style: this.config.whiteText),
            ]
          )
        )
      );
    }

}
