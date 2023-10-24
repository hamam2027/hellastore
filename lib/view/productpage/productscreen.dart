// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hellastore/constant/appconstant.dart';

import 'package:hellastore/model/productmodel.dart';
import 'package:hellastore/view/homepage/homepagewidgets/customdrawer.dart';
import 'package:hellastore/view/homescreen/homescreenwidgets/bottomnave.dart';
import 'package:hellastore/view/homescreen/homescreenwidgets/navbar.dart';

class ProductScreen extends StatelessWidget {
  ProductModel model;
  ProductScreen({
    Key? key,
    required this.model,
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
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        child: Stack(
                          children: [
                            Image.asset(model.image),
                          ],
                        ),
                      )),
                      Expanded(
                          child: Container(
                        child: Center(
                          child: Text(
                            model.title,
                            style: Appconstant.lagstyleb,
                          ),
                        ),
                      ))
                    ],
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
