// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'package:hellastore/constant/appconstant.dart';
// import 'package:hellastore/view/homepage/homepagewidgets/customdrawer.dart';
// import 'package:hellastore/view/homescreen/homescreenwidgets/navbar.dart';
// import 'package:hellastore/view/homescreen/homescreen.dart';

// class HomePage extends StatelessWidget {
//   HomePage({super.key});

//   final bool divic = GetPlatform.isWeb;
//   final GlobalKey<ScaffoldState> scafoldky = GlobalKey();
//   @override
//   Widget build(BuildContext context) {
//     Size div = MediaQuery.of(context).size;
//     var st = div.width >= 1000;
//     return Scaffold(
//            key: scafoldky,

//         // floatingActionButton: Padding(
//         //   padding: const EdgeInsets.only(bottom: 100, left: 10, right: 10),
//         //   child: FloatingActionButton(
//         //     backgroundColor: Colors.transparent,
//         //     onPressed: () {},
//         //     hoverColor: Appconstant.secandcolor,
//         //     child: Image.asset("assets/images/watslogo.png"),
//         //   ),
//         // ),
//         bottomNavigationBar: !divic
//             ? BottomNavigationBar(
//                 selectedIconTheme:
//                     const IconThemeData(size: 35, color: Colors.blue),
//                 unselectedIconTheme:
//                     const IconThemeData(size: 25, color: Colors.black),
//                 unselectedItemColor: Colors.black,
//                 showSelectedLabels: true,
//                 showUnselectedLabels: true,
//                 selectedItemColor: Colors.blue,
//                 items: const [
//                     BottomNavigationBarItem(
//                         label: "my accont",
//                         icon: Icon(
//                           Icons.home,
//                         )),
//                     BottomNavigationBarItem(
//                         label: "my accont",
//                         icon: Icon(
//                           Icons.home,
//                         )),
//                     BottomNavigationBarItem(
//                         label: "my accont", icon: Icon(Icons.person)),
//                     BottomNavigationBarItem(
//                         label: "my accont", icon: Icon(Icons.person)),
//                   ])
//             : null,
//         backgroundColor: Appconstant.primerycolor.withOpacity(0.9),
//         drawer: CustomDrawer(div: div),
//         // key: skafoldky,
//         body: SafeArea(
       
//             child: Column(
//               children: [
//                 NavBar(
//                   st: st,
//                   div: div,
//                   skafoldky: scafoldky,
//                 ),
//                 Expanded(
//                   child: HomeScreen(),
//                 )
//               ],
//             )));
//   }
// }

// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:hellastore/constant/Appconstant.dart';
// import 'package:hellastore/view/homepage/homewidgets/appartitle.dart';
// import 'package:hellastore/view/homepage/homewidgets/caroselhome.dart';
// import 'package:hellastore/view/homepage/homewidgets/categoryitem.dart';
// import 'package:hellastore/view/homepage/homewidgets/gloing.dart';
// import 'package:hellastore/view/homepage/homewidgets/line.dart';
// import 'package:hellastore/view/homepage/homewidgets/searchhome.dart';
// import 'package:hellastore/view/homepage/homewidgets/support.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final GlobalKey<ScaffoldState> skfkey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     Size divsiz = MediaQuery.of(context).size;
//     return Scaffold(
//       extendBody: true,
//       key: skfkey,
//       backgroundColor: Appconstant.primerycolor,
//       appBar: AppBar(
//         elevation: 0,
//         toolbarHeight: 110,
//         backgroundColor: Appconstant.primerycolor,
//         title: TitleHome(
//           die: divsiz,
//           skfkey: skfkey,
//         ),
//       ),
//       
//       drawer: divsiz.width <= 1000 ? const Drawer() : null,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             divsiz.width <= 1000 ? const SerachHome() : const SizedBox(),
//             Container(
//                 padding: EdgeInsets.symmetric(
//                     horizontal: divsiz.width > 1000 ? 0 : 0),
//                 child: CaroselHome(
//                   di: divsiz,
//                 )),
//             const SizedBox(
//               height: 50,
//             ),
//             Container(
//               padding: EdgeInsets.symmetric(
//                   horizontal: divsiz.width > 1000 ? 100 : 0, vertical: 20),
//               height: 400,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   const Text(
//                     "تسوق حسب الأقسام",
//                     style: TextStyle(
//                         fontSize: 30,
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(
//                     height: 30,
//                   ),
//                   Expanded(
//                     child: ListView.builder(
//                       scrollDirection: Axis.horizontal,
//                       itemCount: 10,
//                       itemBuilder: (BuildContext context, int index) {
//                         return Container(
//                           padding: const EdgeInsets.all(20),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               const GlowingHalo(),
//                               Text(
//                                 "Category $index",
//                                 style: const TextStyle(color: Colors.white),
//                               )
//                             ],
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const NeonLineHome(),
//             Container(
//               padding: const EdgeInsets.symmetric(horizontal: 100),
//               height: divsiz.width * 0.60,
//               child: GridView.builder(
//                 scrollDirection: Axis.horizontal,
//                 // physics: const NeverScrollableScrollPhysics(),
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   // childAspectRatio: 1 / 1,
//                   crossAxisSpacing: 20,
//                   mainAxisSpacing: 20,
//                   // mainAxisExtent: 200,
//                   crossAxisCount: 2,
//                 ),
//                 itemCount: 6,
//                 itemBuilder: (BuildContext context, int index) {
//                   return Container(
//                     color: Colors.blue,
//                   );
//                 },
//               ),
//             ),
//             const NeonLineHome(),
//             CategoryHome(
//               div: divsiz,
//               categ: 'القسم الاول ',
//             ),
//             const NeonLineHome(),
//             CategoryHome(
//               div: divsiz,
//               categ: 'القسم الثاني ',
//             ),
//             const NeonLineHome(),
//             CategoryHome(
//               div: divsiz,
//               categ: 'القسم الثالث ',
//             ),
//             const NeonLineHome(),
//             CategoryHome(
//               div: divsiz,
//               categ: 'القسم الرابع ',
//             ),
//             const NeonLineHome(),
//             CategoryHome(
//               div: divsiz,
//               categ: 'منتجات وصلت حديثا',
//             ),
//             const SizedBox(
//               height: 100,
//             ),
//             Container(
//               clipBehavior: Clip.none,
//               height: 350,
//               child: CarouselSlider.builder(
//                   itemCount: 50,
//                   itemBuilder: (BuildContext context, int item, int page) =>
//                       Stack(
//                         clipBehavior: Clip.none,
//                         alignment: Alignment.bottomCenter,
//                         children: [
//                           Container(
//                             height: 250,
//                             decoration: BoxDecoration(
//                               boxShadow: const [
//                                 BoxShadow(
//                                     blurRadius: 5,
//                                     color: Colors.white,
//                                     offset: Offset(5, 5))
//                               ],
//                               borderRadius: BorderRadius.circular(10),
//                               color: const Color(0xff313134),
//                             ),
//                             width: 600,
//                           ),
//                           const Positioned(
//                             top: -70,
//                             child: CircleAvatar(
//                               radius: 75,
//                               backgroundColor: Appconstant.secandcolor,
//                               child: CircleAvatar(
//                                 radius: 70,
//                                 child: Icon(
//                                   Icons.person,
//                                   size: 120,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                   options: CarouselOptions(
//                     height: 200,
//                     // aspectRatio: 16 / 9,
//                     viewportFraction: divsiz.width >= 1000 ? 0.6 : 1,
//                     // initialPage: 0,
//                     // enableInfiniteScroll: true,
//                     reverse: false,
//                     autoPlay: true,
//                     autoPlayInterval: const Duration(seconds: 3),
//                     autoPlayAnimationDuration:
//                         const Duration(milliseconds: 800),
//                     autoPlayCurve: Curves.fastOutSlowIn,
//                     enlargeCenterPage: true,
//                     enlargeFactor: 0.3,
//                     scrollDirection: Axis.horizontal,
//                   )),
//             ),
//             Container(
//               height: 500,
//               width: 600,
//               padding: const EdgeInsets.all(50),
//             ),
//             const SizedBox(
//               height: 100,
//             ),
//             divsiz.width >= 1000 ? const SupportHome() : const SizedBox()
//           ],
//         ),
//       ),
//     );
//   }
// }
