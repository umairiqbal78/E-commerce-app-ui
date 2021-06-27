import 'package:flutter/material.dart';

class GridViewItems extends StatefulWidget {
  @override
  _GridViewItemsState createState() => _GridViewItemsState();
}

class _GridViewItemsState extends State<GridViewItems> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          child: ListTile(
        title: Text(
          "Popular Items",
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
