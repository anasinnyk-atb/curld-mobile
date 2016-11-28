import 'package:flutter/material.dart';
import './home.dart';
import './menu.dart';

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new Menu(),
      appBar: new AppBar(
        title: new Align(child: new Image.network(config.logoUrl), alignment: new FractionalOffset(0.3, 0.5))
      ),
      body: new Container(
        decoration: new BoxDecoration(backgroundImage: new BackgroundImage(image: new NetworkImage(config.bgImageUrl))),
        child: new Align(
          child: new Text(
            config.title,
            style: new TextStyle(color: new Color.fromRGBO(255, 255, 255, 1.0)),
            textAlign: TextAlign.right
          ),
          alignment: FractionalOffset.bottomRight
        )
      ),
      bottomNavigationBar: new BottomNavigationBar(labels: [
        new DestinationLabel(
          icon: new Icon(Icons.thumb_up),
          title: new Text('Like')
        ),
        new DestinationLabel(
          icon: new Icon(Icons.thumb_down),
          title: new Text('Dislike')
        )
      ])
    );
  }
}
