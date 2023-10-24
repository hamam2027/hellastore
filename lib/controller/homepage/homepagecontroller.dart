// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hellastore/model/productmodel.dart';
import 'package:hellastore/view/homescreen/homescreen.dart';
import 'package:hellastore/view/productpage/productscreen.dart';

class HomePageController extends GetxController {
  // ProductModel? productModel;

  int currentIndex = 0;
  int index = 0;
  changepage() {}
  List<Widget> pages = [
    HomeScreen(),
    // ProductScreen(
    //     model: productModel!),
  ];
  void changePage(int index) {
    currentIndex = index;
    update(); 
  }
}
