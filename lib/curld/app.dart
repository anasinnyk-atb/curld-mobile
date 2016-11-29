import "package:flutter/material.dart";
import "package:curld/curld/home.dart";

class CurldApp extends StatefulWidget {
  @override
  CurldAppState createState() => new CurldAppState();
}

class CurldAppState extends State<CurldApp> {
  @override
  Widget build(BuildContext context) {
    Color white = new Color.fromRGBO(255, 255, 255, 1.0);
    Color black = new Color.fromRGBO(0, 0, 0, 1.0);

    return new MaterialApp(
      theme: new ThemeData(
        primaryColor: white,
        primaryColorBrightness: Brightness.dark,
        accentColor: black,
        accentColorBrightness: Brightness.light,
      ),
      home: new Home()
    );
  }
}
