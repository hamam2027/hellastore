// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hellastore/constant/appconstant.dart';
import 'package:hellastore/controller/homescreen/homescreencontroller.dart';

class Category extends StatelessWidget {
  final bool st;
  Category({
    Key? key,
    required this.st,
  }) : super(key: key);
 final HomeScreenController controller = Get.find();
 

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: st ? 150 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "الاقسام",
            style: Appconstant.lagstylew,
          ),
          GridView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: st ? 3 : 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1 / 0.75),
            children: List.generate(
                6,
                (index) => InkWell(
                      onTap: () {
                        print(index);
                      },
                      onHover: (i) {
                        controller.onhover(i, index);
                      },
                      child: GetBuilder<HomeScreenController>(
                          builder: (controller) {
                        return Container(
                          padding: EdgeInsets.all(
                              controller.iu == true && controller.ine == index
                                  ? 0
                                  : 10),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          child: Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Image.asset("assets/images/item.jpg")),
                        );
                      }),
                    )),
          ),
        ],
      ),
    );
  }
}
