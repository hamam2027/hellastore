import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hellastore/constant/appconstant.dart';

import 'package:hellastore/controller/homescreen/homescreencontroller.dart';
import 'package:hellastore/view/homepage/homescreenwidgets/item.dart';

class ItemPacage extends StatelessWidget {
  final bool st;
  const ItemPacage({
    Key? key,
    required this.st,
  }) : super(key: key);
  // HomeScreenController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(builder: (controller) {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 30),
        padding: EdgeInsets.symmetric(horizontal: st ? 150 : 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(st ? 50 : 15)),
              child: CarouselSlider(
                  items: [
                    Image.asset(
                      "assets/images/1.png",
                      fit: BoxFit.fill,
                    )
                  ],
                  options: CarouselOptions(
                      aspectRatio: 1 / 0.5,
                      viewportFraction: 1,
                      autoPlay: true)),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: st ? 30 : 15, horizontal: st ? 20 : 10),
              child: Text(
                'القسم الاول',
                style: st ? Appconstant.lagstylew : Appconstant.mlagstylew,
              ),
            ),
            Container(
              height: st ? 450 : 300,
              clipBehavior: Clip.none,
              width: double.infinity,
              child: ListView.builder(
                // controller: controller.listcontoller,
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) {
                  return ItemProduct(
                    // ind: index,
                    st: st,
                  );
                },
              ),
            ),
          ],
        ),
      );
    });
  }
}

// Build animated item (helper for all examples)

