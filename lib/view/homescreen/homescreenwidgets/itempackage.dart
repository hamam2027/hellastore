// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hellastore/constant/appconstant.dart';
import 'package:hellastore/controller/homescreen/homescreencontroller.dart';
import 'package:hellastore/model/productmodel.dart';
import 'package:hellastore/view/categories/categories.dart';
import 'package:hellastore/view/homescreen/homescreenwidgets/item.dart';
import 'package:hellastore/view/productpage/productscreen.dart';

class ItemPacage extends StatelessWidget {
  final bool st;
  final String cat;
  ItemPacage({
    Key? key,
    required this.st,
    required this.cat,
  }) : super(key: key);
  HomeScreenController controller = Get.find();

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
              child: InkWell(
                onTap: () {
                  Get.to(() => CategoriesScreen( list: controller.productlist,));
                },
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
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: st ? 30 : 15, horizontal: st ? 20 : 10),
              child: Text(
                cat,
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
                itemCount: controller.productlist.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Get.to(() => ProductScreen(
                            model: controller.productlist[index],
                          ));
                    },
                    child: ItemProduct(
                      // ind: index,
                      st: st,
                      title: controller.productlist[index].title,
                      price: controller.productlist[index].price,
                      oldprice: controller.productlist[index].oldprice,
                      image: controller.productlist[index].image,
                    ),
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

