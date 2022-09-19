import 'package:flutter/material.dart';

import '../models/Bulding.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({Key? key, required this.building}) : super(key: key);

  final Building building;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(building.name, style: TextStyle(fontSize: 30)),
        ),
        body: Image.network(building.imgUrl));
  }
}
