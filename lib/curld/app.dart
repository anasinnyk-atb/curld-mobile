import "package:flutter/material.dart";
import "./home.dart";

class CurldApp extends StatefulWidget {
  @override
  CurldAppState createState() => new CurldAppState();
}

class CurldAppState extends State<CurldApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Home()
    );
  }
}
