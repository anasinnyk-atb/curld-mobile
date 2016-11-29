import "package:flutter/material.dart";
import 'package:curld/curld/product/repository.dart';
import 'package:curld/curld/product/entity.dart';

class Main extends StatefulWidget {
  @override
  State createState() => new MainState();
}

class MainState extends State<Main> {
  ProductRepository repository = new ProductRepository();
  Product product;

  init() async {
    this.product = await this.repository.load();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold();
  }
}
