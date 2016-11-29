import 'package:flutter/material.dart';
import './home.dart';
import './menu.dart';

class HomeState extends State<Home> {
  Color black = new Color.fromRGBO(0, 0, 0, 1.0);
  Color white = new Color.fromRGBO(255, 255, 255, 1.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new Menu(),
      appBar: new AppBar(
        title: new Align(
          child: new Image.network(config.logoUrl),
          alignment: new FractionalOffset(0.3, 0.5)
        ),
        leading: new IconButton(
          icon: new Icon(Icons.menu, color: this.black),
          onPressed: null //@FIXME
        )
      ),
      body: new Container(
        decoration: new BoxDecoration(
          backgroundImage: new BackgroundImage(
            image: new NetworkImage(config.bgImageUrl),
            fit: ImageFit.cover
          )
        ),
        child: new Align(
          child: new Padding(
            padding: new EdgeInsets.all(20.0),
            child: new Text(
              config.title,
              style: new TextStyle(
                color: new Color.fromRGBO(255, 255, 255, 1.0),
                fontWeight: FontWeight.w900,
                fontFamily: "Roboto",
                fontSize: 36.0
              ),
              textAlign: TextAlign.right
            ),
          ),
          alignment: FractionalOffset.bottomRight
        ),
      ),
      bottomNavigationBar: new RaisedButton(
        color: new Color.fromRGBO(255, 114, 61, 1.0),
        onPressed: () => print('CLICK'),
        child: new Text('START', style: new TextStyle(color: this.white))
      )
    );
  }
}
