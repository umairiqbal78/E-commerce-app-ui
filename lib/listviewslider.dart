import 'package:flutter/material.dart';

class CategoriesSlider extends StatefulWidget {
  @override
  _CategoriesSliderState createState() => _CategoriesSliderState();
}

class _CategoriesSliderState extends State<CategoriesSlider> {
  List<dynamic> lst = [
    ["Electronic", Icons.flash_on_outlined, "5  items"],
    ["Clothes", Icons.login, "5  items"],
    ["Appliances", Icons.flash_on_outlined, "5  items"],
    ["House Holds", Icons.flash_on_outlined, "5  items"],
    ["Others", Icons.flash_on_outlined, "5  items"],
  ];
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
              itemCount: lst.length,
              itemBuilder: (BuildContext context, index) => Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Icon(
                      lst[index][1],
                      size: 40.0,
                      color: Colors.purple,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${lst[index][0]}',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${lst[index][2]}',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ]),
                    SizedBox(
                      width: 20.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
