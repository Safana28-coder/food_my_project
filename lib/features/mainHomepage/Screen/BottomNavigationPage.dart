import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_my_project/ImageConst.dart';
import 'package:food_my_project/Modal/restuarantModal.dart';
import 'package:food_my_project/colorconst.dart';
import 'package:food_my_project/features/mainHomepage/Screen/MainHomepage.dart';
import 'package:food_my_project/features/mainHomepage/Screen/list.dart';
import 'package:food_my_project/features/mainHomepage/Screen/order.dart';
import 'package:food_my_project/features/profile/profile.dart';

import '../../../main.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  List bottomicons = [Mainhomepage(), Order(order: Restuarantmodal(),), MyList(), Profile()];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar (
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colorconst.primarycolor,
            onTap: (value) {
              selectedIndex = value;
              setState(() {});
            },
            currentIndex: selectedIndex,
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(ImageConst.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(ImageConst.order), label: "Order"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(ImageConst.list), label: "List"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(ImageConst.profile), label: "Profile"),
            ]),
        body: bottomicons.elementAt(selectedIndex),
      ),
    );
  }
}