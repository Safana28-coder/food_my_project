import 'package:flutter/material.dart';
import 'package:food_my_project/features/SigninSignup/screen/HomePage.dart';
import 'package:food_my_project/features/SplashScreen/Screen/splashScreen.dart';
import 'package:food_my_project/features/mainHomepage/Screen/BottomNavigationPage.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../main.dart';

class Loadingfile extends StatefulWidget {
  const Loadingfile({super.key});

  @override
  State<Loadingfile> createState() => _LoadingfileState();
}

class _LoadingfileState extends State<Loadingfile> {

  splash() async {
     bool login=false;
     bool first =false;
     SharedPreferences pref=await SharedPreferences.getInstance();
     first=pref.getBool('first')??false;
     login=pref.getBool('login')??false;
     Future.delayed(Duration(seconds: 2)).then((value) {
       Navigator.push(context, MaterialPageRoute(builder: (context) =>
         first==true?
             Homepage():Splashscreen()
         ,));
       Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>
           login==true?
               BottomNavigationPage():
               Homepage()), (route) => false,);
       setState(() {

       });

     },);


  }
  @override
  void initState() {
    splash();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Center(
               child: Container(
                 height: width*0.7,
                 width: width*0.7,
                 child: Lottie.asset("assets/icons/animation.json"),
               ),
             )
          ],
        ),
      ),
    );
  }
}
