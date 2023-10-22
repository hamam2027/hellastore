import 'package:flutter/material.dart';
import 'package:hellastore/constant/appconstant.dart';

class GlowingHalo extends StatelessWidget {
  const GlowingHalo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              border: Border.fromBorderSide(
                  BorderSide(color: Appconstant.secandcolor, width: 3))),
          child: Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  Appconstant.secandcolor.withOpacity(0.3),
                  Colors.transparent
                ],
                stops: const [0.5, 1.0],
              ),
            ),
          ),
        ),
        Positioned(
          // bottom: 50,
          child: Container(
              // transform: Matrix4.skew(0.0, 0.1),
              clipBehavior: Clip.hardEdge,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                "assets/images/week.png",
                height: 150,
                width: 150,
                fit: BoxFit.fitHeight,
              )),
        ),
      ],
    );
  }
}

// gradient: RadialGradient(
//               colors: [Colors.blue.withOpacity(0.3), Colors.transparent],
//               stops: const [0.8, 1.0],
//             ),
  // Container(
  //         height: 220,
  //         width: 220,
  //         decoration: const BoxDecoration(
  //             shape: BoxShape.circle,
  //             border: Border.fromBorderSide(
  //                 BorderSide(color: Appconstant.secandcolor, width: 3))),
  //         child: Container(
  //           height: 200,
  //           width: 200,
  //           decoration: const BoxDecoration(
  //               shape: BoxShape.circle,
  //               gradient: LinearGradient(
  //                   begin: Alignment.center,
                   
  //                   colors: [Appconstant.secandcolor, Colors.transparent])),
  //         ),
  //       ),