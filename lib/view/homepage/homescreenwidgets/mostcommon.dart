import 'package:flutter/material.dart';

import 'package:hellastore/constant/appconstant.dart';
import 'package:hellastore/view/homepage/homescreenwidgets/gloing.dart';

class MostCommon extends StatelessWidget {
  const MostCommon({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "الاكثر مبيعا",
            style: Appconstant.lagstylew,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return TweenAnimationBuilder(
                  tween: Tween(begin: -1, end: 0.5),
                  duration: const Duration(milliseconds: 800),
                  builder: (context, value, child) => Transform.translate(
                    offset: Offset(0, value * -200 + 100),
                    child: child,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const GlowingHalo(),
                        Text(
                          "Category $index",
                          style: const TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
