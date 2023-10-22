// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:hellastore/constant/appconstant.dart';

class LottiItem extends StatelessWidget {
  final bool st;
 final String image;
 final String title;
final  String discription;
  const LottiItem({
    Key? key,
    required this.st,
    required this.image,
    required this.title,
    required this.discription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Lottie.asset(image, height: st ? 150 : 100),
        Text(
          textAlign: TextAlign.center,
          title,
          style: st ? Appconstant.lagstylew : Appconstant.mlagstylew,
        ),
        Text(
          textAlign: TextAlign.center,
       discription,
          style: st ? Appconstant.midstylew : Appconstant.mmidstylew,
        ),
      ],
    );
  }
}
