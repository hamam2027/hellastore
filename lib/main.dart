import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hellastore/constant/costomsecroll.dart';
import 'package:hellastore/view/homepage/homepage.dart';
import 'package:hellastore/localizaiton/translate.dart';
import 'package:hellastore/view/homescreen/homescreen.dart';
import 'package:hellastore/view/homescreen/homescreenwidgets/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      scrollBehavior: MyCustomScroll(),
      debugShowCheckedModeBanner: false,
      title: 'Hella Store',
      theme: ThemeData(
        drawerTheme: const DrawerThemeData(),
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white, size: 35)),
        iconTheme: const IconThemeData(color: Colors.white),
        fontFamily: "beIN",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      locale: const Locale("ar"),
      translations: Translate(),
      home: HomeScreen(),
      // initialRoute: '/home',
      // getPages: [GetPage(name: '/home', page: () => HomeScreen())],
    );
  }
}
