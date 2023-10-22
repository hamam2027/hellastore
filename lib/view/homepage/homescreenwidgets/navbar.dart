import 'package:flutter/material.dart';

import 'package:hellastore/constant/appconstant.dart';

class NavBar extends StatelessWidget {
  final dynamic skafoldky;
  final bool st;
  const NavBar({
    Key? key,
    required this.skafoldky,
    required this.st,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: st ? 100 : 60,
      color: Appconstant.primerycolor,
      child: Row(
        children: [
          SizedBox(
            width: st ? 100 : 0,
          ),
          IconButton(
              onPressed: () {
                skafoldky.currentState!.openDrawer();
              },
              icon: Icon(
                Icons.menu,
                size: st ? 35 : 20,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: st ? 35 : 20,
              )),
          Expanded(
            child: Center(
              child: Image.asset(
                "assets/images/logo.png",
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              size: st ? 35 : 20,
            ),
          ),
          Stack(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    size: st ? 35 : 20,
                  )),
              const CircleAvatar(
                radius: 10,
                child: Text("0"),
              )
            ],
          ),
          const Text(
            "0 ر.س",
            style: Appconstant.midstylew,
          ),
          SizedBox(
            width: st ? 100 : 0,
          ),
        ],
      ),
    );
  }
}
