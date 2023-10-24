import 'package:flutter/material.dart';
import 'package:hellastore/constant/appconstant.dart';

class CustomDrawer extends StatelessWidget {
  final Size div;
  const CustomDrawer({
    Key? key,
    required this.div,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: div.width >= 1000 ? div.width * 0.3 : div.width * 0.6,
      child: Container(
        color: Colors.transparent,
        child: ListView.separated(
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              // focusColor: Colors.white,
              // autofocus: true,
              enabled: true,
              onTap: () {},
              hoverColor: Appconstant.secandcolor,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              title: const Text(
                "الصفحة الرئيسية",
                style: Appconstant.midstyleb,
              ),
              leading: const Icon(Icons.home),
              trailing: const Icon(Icons.arrow_back_ios_new),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(
            height: 2,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
