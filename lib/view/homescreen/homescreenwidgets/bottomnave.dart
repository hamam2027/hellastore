// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:hellastore/constant/appconstant.dart';

class BottomNav extends StatelessWidget {
  final bool st;
  const BottomNav({
    Key? key,
    required this.st,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Appconstant.secandcolor,
            Appconstant.primerycolor,
          ])),
      margin: const EdgeInsets.only(
        top: 50,
      ),
      padding: EdgeInsets.symmetric(horizontal: st ? 150 : 10, vertical: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "تابعنا على",
                  style: Appconstant.lagstylew,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.home,
                          size: 40,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.home,
                          size: 40,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.home,
                          size: 40,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.home,
                          size: 40,
                        )),
                  ],
                ),
              ],
            ),
          ),
          GridView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: st ? 3 : 1),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "من نحن",
                      style: Appconstant.lagstylew,
                    ),
                    Expanded(child: Image.asset("assets/images/logo.png")),
                    const Expanded(
                      child: Text(
                        textAlign: TextAlign.center,
                        "متاجر حلة لبيع المنتجات والخدمات رقمية والاشتراكات بشكل رسمي بأفضل العروض والخصومات على منتجات الأصلية , ونعمل بتصريح من وزارة التجارة السعودية برقم التوثيق في منصة الأعمال وهي : 0000015035",
                        style: Appconstant.midstylew,
                      ),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "روابط تهمك",
                    style: Appconstant.lagstylew,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: st ? 300 : 180,
                    child: GridView.extent(
                      physics: const BouncingScrollPhysics(),
                      // physics: const NeverScrollableScrollPhysics(),
                      // shrinkWrap: true,
                      maxCrossAxisExtent: 400,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: st ? 1 / 0.15 : 1 / 0.25,
                      children: List.generate(
                        4,
                        (index) => Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          height: 100,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "خدمة العملاء",
                      style: Appconstant.lagstylew,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.home)),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.home))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
