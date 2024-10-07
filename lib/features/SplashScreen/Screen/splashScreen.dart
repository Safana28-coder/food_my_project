import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_my_project/ImageConst.dart';
import 'package:food_my_project/colorconst.dart';
import 'package:food_my_project/features/SigninSignup/screen/HomePage.dart';
import 'package:food_my_project/features/SplashScreen/Screen/loadingFile.dart';
import 'package:food_my_project/main.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  List<ContentConfig> listContentConfig = [];

  @override
  void initState() {
    super.initState();

    listContentConfig.add(
      ContentConfig(
        centerWidget: Column(
          children: [
            Container(
              width: width * 0.4,
              height: width * 0.4,
              child: SvgPicture.asset(ImageConst.chicken),
            ),
          ],
        ),
        title: "Delicious",
        styleTitle: const TextStyle(
            color: Colorconst.white, fontSize: 24, fontWeight: FontWeight.w700),
        description:
            "Just try variety and delicious food from\n our restaurants.",
        styleDescription: const TextStyle(
            color: Colorconst.white, fontWeight: FontWeight.w400, fontSize: 14),
        backgroundColor: Colorconst.primarycolor,
      ),
    );
    listContentConfig.add(
      ContentConfig(
        centerWidget: Container(
          width: width * 0.4,
          height: width * 0.4,
          child: SvgPicture.asset(ImageConst.shipped),
        ),
        title: "Fast delivery",
        styleTitle: const TextStyle(
            color: Colorconst.white, fontSize: 24, fontWeight: FontWeight.w700),
        description: "Quick and fast delivery\n .",
        styleDescription: const TextStyle(
            color: Colorconst.white, fontWeight: FontWeight.w400, fontSize: 14),
        backgroundColor: Colorconst.primarycolor,
      ),
    );
    listContentConfig.add(
      ContentConfig(
        centerWidget: Container(
          width: width * 0.4,
          height: width * 0.4,
          child: SvgPicture.asset(ImageConst.medal),
        ),
        title: "Certificate food",
        styleTitle: const TextStyle(
            color: Colorconst.white, fontSize: 24, fontWeight: FontWeight.w700),
        description:
            "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit.",
        styleDescription: const TextStyle(
            color: Colorconst.white, fontWeight: FontWeight.w400, fontSize: 14),
        backgroundColor: Colorconst.primarycolor,
      ),
    );
    listContentConfig.add(
      ContentConfig(
        centerWidget: Container(
          width: width * 0.4,
          height: width * 0.4,
          child: SvgPicture.asset(ImageConst.credit),
        ),
        title: "Payment Online",
        styleTitle: const TextStyle(
            color: Colorconst.white, fontSize: 24, fontWeight: FontWeight.w700),
        description:
            "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit.",
        styleDescription: const TextStyle(
            color: Colorconst.white, fontWeight: FontWeight.w400, fontSize: 14),
        backgroundColor: Colorconst.primarycolor,
      ),
    );
  }

  void onDonePress() {

    log("End of slides");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IntroSlider(
          key: UniqueKey(),
          isShowNextBtn: false,
          isShowPrevBtn: false,
          isShowSkipBtn: false,
          isScrollable: true,
          isShowDoneBtn: true,
          doneButtonStyle: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colorconst.white)
          ),
          listContentConfig: listContentConfig,
          onDonePress: () async {
            SharedPreferences prefs=await SharedPreferences.getInstance();
            prefs.setBool('first', true);
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const Loadingfile(),
                ),(route) => false,);
          },
        ),
      ),
    );
  }
}
