import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hellastore/constant/appconstant.dart';
import 'package:hellastore/controller/homescreen/homescreencontroller.dart';
import 'package:hellastore/view/homepage/homepagewidgets/customdrawer.dart';
import 'package:hellastore/view/homescreen/homescreenwidgets/bottomnave.dart';
import 'package:hellastore/view/homescreen/homescreenwidgets/caroselhome.dart';
import 'package:hellastore/view/homescreen/homescreenwidgets/categories.dart';
import 'package:hellastore/view/homescreen/homescreenwidgets/important.dart';
import 'package:hellastore/view/homescreen/homescreenwidgets/itempackage.dart';
import 'package:hellastore/view/homescreen/homescreenwidgets/lotteitem.dart';
import 'package:hellastore/view/homescreen/homescreenwidgets/mostcommon.dart';
import 'package:hellastore/view/homescreen/homescreenwidgets/navbar.dart';
import 'package:hellastore/view/homescreen/homescreenwidgets/videoplayer.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);
  final HomeScreenController controller = Get.put(HomeScreenController());
  final GlobalKey<ScaffoldState> scafoldky = GlobalKey();
  @override
  Widget build(BuildContext context) {
    Size divicesize = MediaQuery.of(context).size;
    var st = divicesize.width >= 1000;
    return Scaffold(
      key: scafoldky,
      drawer: CustomDrawer(div: divicesize),
      body: SafeArea(
        child: Column(
          children: [
            NavBar(
              st: st,
              div: divicesize,
              skafoldky: scafoldky,
            ),
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
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return ItemPacage(
                            st: st,
                            cat: 'القسم رقم $index',
                          );
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
                                discription:
                                    "منذ بداية الاشتراك وحتى الانتهاء")),
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
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: List.generate(
                                                      5,
                                                      (index) => const Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                          )),
                                                ),
                                                const Text(
                                                  " متجر رائع وفريق \n متعاون جدا",
                                                  style: Appconstant.midstyleb,
                                                  textAlign: TextAlign.center,
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                      margin: EdgeInsets.symmetric(
                          vertical: 50, horizontal: st ? 150 : 10),
                      child: Column(
                        children: [
                          const Text(
                            "ألاسئلة الشائعة",
                            style: Appconstant.lagstylew,
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          GridView.extent(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            maxCrossAxisExtent: 600,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 20,
                            childAspectRatio: 1 / 0.15,
                            children: List.generate(
                              4,
                              (index) => Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                height: 100,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    BottomNav(st: st)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
