// import 'imageslider.dart';
import 'package:ecom_app_ui/carouselSlider.dart';
import 'package:flutter/material.dart';
import 'slidertop.dart';
import 'listviewslider.dart';

void main() => runApp(MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Ecom App UI",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          SliderTop(),
          CarouselClass(),
          CategoriesSlider(),
        ],
      ),
    )));
