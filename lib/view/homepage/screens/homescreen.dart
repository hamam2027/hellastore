import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hellastore/constant/appconstant.dart';
import 'package:hellastore/controller/homescreen/homescreencontroller.dart';
import 'package:hellastore/view/homepage/homescreenwidgets/caroselhome.dart';
import 'package:hellastore/view/homepage/homescreenwidgets/categories.dart';
import 'package:hellastore/view/homepage/homescreenwidgets/important.dart';
import 'package:hellastore/view/homepage/homescreenwidgets/itempackage.dart';
import 'package:hellastore/view/homepage/homescreenwidgets/lotteitem.dart';
import 'package:hellastore/view/homepage/homescreenwidgets/mostcommon.dart';
import 'package:hellastore/view/homepage/homescreenwidgets/navbar.dart';
import 'package:hellastore/view/homepage/homescreenwidgets/videoplayer.dart';

class HomeScreen extends StatelessWidget {
  final dynamic skafoldky;

  HomeScreen({
    Key? key,
    required this.skafoldky,
  }) : super(key: key);
  final HomeScreenController controller = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    Size divicesize = MediaQuery.of(context).size;
    var st = divicesize.width >= 1000;
    return Column(
      children: [
        NavBar(skafoldky: skafoldky, st: st),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CaroselHome(
                  di: divicesize,
                ),
                Important(
                  st: st,
                  divicesize: divicesize,
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: st ? 150 : 0),
                    child: const MostCommon()),
                // const NeonLineHome(),
                Category(
                  st: st,
                ),

                GetBuilder<HomeScreenController>(builder: (controller) {
                  return ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return ItemPacage(st: st);
                    },
                  );
                }),
                VideoPlayerScreen(
                  st: st,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: LottiItem(
                        st: st,
                        image: 'assets/jsonfile/good.json',
                        title: "منتجات أصلية 100%",
                        discription: "تتميز المنتجات بجودتها العالية",
                      ),
                    ),
                    Expanded(
                        child: LottiItem(
                            st: st,
                            image: "assets/jsonfile/payment.json",
                            title: "دفع امن",
                            discription: "طرق دفع متعددة")),
                    Expanded(
                        child: LottiItem(
                            st: st,
                            image: "assets/jsonfile/chick.json",
                            title: "ضمان كامل المدة",
                            discription: "منذ بداية الاشتراك وحتى الانتهاء")),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 50, left: st ? 150 : 0, right: st ? 150 : 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        " أراء العملاء",
                        style: Appconstant.lagstylew,
                      ),
                      CarouselSlider(
                          items: List.generate(
                              8,
                              (index) => Stack(
                                    alignment: Alignment.topCenter,
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 40, horizontal: 10),
                                        padding: const EdgeInsets.only(
                                            top: 50,
                                            bottom: 10,
                                            left: 10,
                                            right: 10),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            const Text(
                                              "احمد عبد الله",
                                              style: Appconstant.lagstyleb,
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: List.generate(
                                                  5,
                                                  (index) => const Icon(
                                                        Icons.star,
                                                        color: Colors.yellow,
                                                      )),
                                            ),
                                            const Text(
                                              " متجر رائع وفريق \n متعاون جدا",
                                              style: Appconstant.midstyleb,
                                              textAlign: TextAlign.center,
                                              overflow: TextOverflow.ellipsis,
                                            )
                                          ],
                                        ),
                                      ),
                                      const Positioned(
                                        top: 0,
                                        child: CircleAvatar(
                                          radius: 40,
                                          backgroundColor: Colors.white,
                                          child: Icon(
                                            Icons.person,
                                            size: 50,
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                          options: CarouselOptions(
                            height: st ? 300 : 260,
                            autoPlay: true,
                            viewportFraction: st ? 0.33 : 1,
                          ))
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  width: double.infinity,
                  child: Column(
                    children: [
                      const Text(
                        "متجر حلة بالارقام",
                        style: Appconstant.lagstylew,
                      ),
                      const Text(
                        "نفخر بالارقام والانجازات",
                        style: Appconstant.midstylew,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: LottiItem(
                              st: st,
                              image: 'assets/jsonfile/good.json',
                              title: "منتجات أصلية 100%",
                              discription: "تتميز المنتجات بجودتها العالية",
                            ),
                          ),
                          Expanded(
                              child: LottiItem(
                                  st: st,
                                  image: "assets/jsonfile/payment.json",
                                  title: "دفع امن",
                                  discription: "طرق دفع متعددة")),
                          Expanded(
                              child: LottiItem(
                                  st: st,
                                  image: "assets/jsonfile/chick.json",
                                  title: "ضمان كامل المدة",
                                  discription:
                                      "منذ بداية الاشتراك وحتى الانتهاء")),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      const Text(
                        "ألاسئلة الشائعة",
                        style: Appconstant.lagstylew,
                      ),
                      Wrap(
                        direction: Axis.vertical,
                        children: List.generate(
                            10,
                            (index) => Container(
                                  width: divicesize.width * 0.5,
                                  height: 100,
                                  margin: const EdgeInsets.all(5),
                                  color: Colors.grey,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text("data"),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.add))
                                    ],
                                  ),
                                )),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
