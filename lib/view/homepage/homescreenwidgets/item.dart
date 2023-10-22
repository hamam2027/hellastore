// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:hellastore/constant/appconstant.dart';

class ItemProduct extends StatelessWidget {
 final bool st;
  // int ind;
 const ItemProduct({
    Key? key,
    required this.st,
    // required this.ind,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: -1, end: 0.5),
      duration: const Duration(milliseconds: 800),
      builder: (context, value, child) => Transform.translate(
        offset: Offset(0, value * -200 + 100),
        child: child,
      ),
      child: Container(
        width: st ? 300 : 160,
        margin: const EdgeInsets.all(5),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: const Border.fromBorderSide(
                BorderSide(color: Appconstant.secandcolor, width: 3))),
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            clipBehavior: Clip.antiAlias,
            children: [
              Column(
                children: [
                  Image.asset("assets/images/item.jpg"),
                  Text(
                    "اشتراك حلة ستور",
                    style: st
                        ? Appconstant.lagstyleb.copyWith(color: Colors.black)
                        : Appconstant.midstyleb,
                  ),
                  Text(
                    " 425 " "ر.س",
                    style: Appconstant.midstyleb.copyWith(color: Colors.black),
                  ),
                  Text(
                    " 425 " "ر.س",
                    style: Appconstant.midstyleb.copyWith(color: Colors.red),
                  ),
                  // Text(
                  //   ind.toString(),
                  //   style: Appconstant.lagstyle.copyWith(color: Colors.red),
                  // ),
                  const Spacer(),
                  Container(
                    color: Colors.grey,
                    width: double.infinity,
                    child: MaterialButton(
                      height: 60,
                      minWidth: 200,
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.shopping_cart_outlined),
                          Text("اضف للسلة"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    size: 35,
                    color: Colors.black,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
