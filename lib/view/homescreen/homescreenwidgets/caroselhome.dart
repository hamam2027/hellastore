import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CaroselHome extends StatelessWidget {
  final Size di;
  const CaroselHome({
    Key? key,
    required this.di,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
    
        disableGesture: true,
        items: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              "assets/images/1.png",
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              "assets/images/2.png",
              fit: BoxFit.fill,
            ),
          ),
        ],
        options: CarouselOptions(
            viewportFraction: 1,
            // aspectRatio: 16 / 1,
            height: di.width >= 1000 ? 620 : 250,
            autoPlay: true));
  }
}
