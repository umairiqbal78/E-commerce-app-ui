import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

class CarouselClass extends StatefulWidget {
  @override
  _CarouselClassState createState() => _CarouselClassState();
}

class _CarouselClassState extends State<CarouselClass> {
  final List images = [
    ["assets/earphone.jpeg", "Earphones"],
    ["assets/hp.jpg", "Hawlett Packet"],
    ["assets/laptop3.jpeg", "DELL Laptop"],
    ["assets/iphone.webp", "IPhone"],
    ["assets/laptop3.jpeg", "Lenovo Laptop"],
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
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
      child: CarouselSlider(
        options: CarouselOptions(
          height: 300.0,
          viewportFraction: 1,
        ),
        items: images.map((i) {
          return Builder(builder: (BuildContext context) {
            return Column(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: FittedBox(child: new Image.asset(i[0]))),
                  ),
                ),
                ListTile(
                  title: Text(
                    i[1],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: [
                      RatingBar.readOnly(
                        initialRating: 4.5,
                        isHalfAllowed: true,
                        halfFilledIcon: Icons.star_half,
                        filledIcon: Icons.star,
                        emptyIcon: Icons.star_border,
                        filledColor: Colors.amber,
                        halfFilledColor: Colors.amberAccent,
                        emptyColor: Colors.transparent,
                        size: 18.0,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Center(child: Text("4.5 (23 Reviews)")),
                    ],
                  ),
                )
              ],
            );
          });
        }).toList(),
      ),
    );
  }
}
