// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hellastore/model/productmodel.dart';
import 'package:hellastore/view/homepage/homepagewidgets/customdrawer.dart';
import 'package:hellastore/view/homescreen/homescreenwidgets/bottomnave.dart';
import 'package:hellastore/view/homescreen/homescreenwidgets/item.dart';
import 'package:hellastore/view/homescreen/homescreenwidgets/navbar.dart';
import 'package:hellastore/view/productpage/productscreen.dart';

class CategoriesScreen extends StatelessWidget {
  final List<ProductModel> list;
  CategoriesScreen({
    Key? key,
    required this.list,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> scafoldky = GlobalKey();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool st = size.width >= 1000;
    return Scaffold(
      drawer: CustomDrawer(div: size),
      key: scafoldky,
      body: Column(
        children: [
          NavBar(
            div: size,
            st: st,
            skafoldky: scafoldky,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                        vertical: 50, horizontal: st ? 150 : 10),
                    child: GridView.builder(
                      itemCount: list.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 1 / 1.5,
                          crossAxisCount: st ? 3 : 2),
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Get.to(() => ProductScreen(model: list[index]));
                        },
                        child: ItemProduct(
                          st: st,
                          title: list[index].title,
                          price: list[index].price,
                          oldprice: list[index].oldprice,
                          image: list[index].image,
                        ),
                      ),
                    ),
                  ),
                  BottomNav(
                    st: st,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
