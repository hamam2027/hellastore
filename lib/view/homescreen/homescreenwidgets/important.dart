// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Important extends StatelessWidget {
  final bool st;
  final Size divicesize;
  const Important({
    Key? key,
    required this.st,
    required this.divicesize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: divicesize.width,
          height: st ? 150 : 100,
        ),
        Positioned(
          top: -50,
          child: SizedBox(
            height: st ? 170 : 120,
            width: divicesize.width,
            child: Center(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    clipBehavior: Clip.antiAlias,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    // height: 150,
                    width: st ? 200 : 130,
                    child: Image.asset(
                      "assets/images/item.jpg",
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
