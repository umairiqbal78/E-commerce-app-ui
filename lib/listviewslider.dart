import 'package:flutter/material.dart';

class CategoriesSlider extends StatefulWidget {
  @override
  _CategoriesSliderState createState() => _CategoriesSliderState();
}

class _CategoriesSliderState extends State<CategoriesSlider> {
  List<String> lst = ["Electronic", "Appliances"];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 14.0, left: 14.0),
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'Headline',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) => Card(
                child: Center(child: Text('Dummy Card Text')),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
