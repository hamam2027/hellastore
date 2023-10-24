import 'package:flutter/material.dart';

import 'package:hellastore/constant/appconstant.dart';

class Category extends StatefulWidget {
  final bool st;
  const Category({
    Key? key,
    required this.st,
  }) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  bool isHovering = false;
  int? iu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: widget.st ? 150 : 0),
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
                crossAxisCount: widget.st ? 3 : 2,
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
                        print(i);

                        iu = index;
                      },
                      child:
                          //  GetBuilder<HomeScreenController>(
                          //     builder: (controller) {
                          //   return
                          MouseRegion(
                        onEnter: (event) => setState(() => isHovering = true),
                        onExit: (event) => setState(() => isHovering = false),
                        child: Container(
                          padding: EdgeInsets.all(
                              isHovering == true && iu == index ? 0 : 15),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          child: Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Image.asset("assets/images/item.jpg")),
                        ),
                      ),
                    )),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// import 'package:hellastore/constant/appconstant.dart';

// class Category extends StatelessWidget {
//   final bool st;
//   Category({
//     Key? key,
//     required this.st,
//   }) : super(key: key);

//   @override
//   Widget build(
//     BuildContext context,
//   ) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: st ? 150 : 0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text(
//             "الاقسام",
//             style: Appconstant.lagstylew,
//           ),
//           GridView(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: st ? 3 : 2,
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing: 10,
//                 childAspectRatio: 1 / 0.75),
//             children: List.generate(
//                 6,
//                 (index) => InkWell(
//                       onTap: () {
//                         print(index);
//                       },
//                       onHover: (i) {
//                         print(i);
//                         // controller.onhover(i, index);
//                       },
//                       child:
//                       //  GetBuilder<HomeScreenController>(
//                       //     builder: (controller) {
//                       //   return

//                         Container(
//                           // padding: EdgeInsets.all(
//                           //     controller.iu == true && controller.ine == index
//                           //         ? 0
//                           //         : 10),
//                           clipBehavior: Clip.antiAlias,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(15)),
//                           child: Container(
//                               clipBehavior: Clip.antiAlias,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(15)),
//                               child: Image.asset("assets/images/item.jpg")),
//                        ),
//                     )),
//           ),
//         ],
//       ),
//     );
//   }
// }
