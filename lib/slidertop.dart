import 'package:flutter/material.dart';

class SliderTop extends StatefulWidget {
  @override
  _SliderTopState createState() => _SliderTopState();
}

class _SliderTopState extends State<SliderTop> {
  List<dynamic> lst = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          child: ListTile(
        title: Text(
          "Items",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Text(
          "View More",
          style: TextStyle(color: Colors.purple),
        ),
      )),
    ]);
  }
}
