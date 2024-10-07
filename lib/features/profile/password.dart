import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_my_project/features/profile/profile.dart';

import '../../ImageConst.dart';
import '../../colorconst.dart';
import '../../main.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  TextEditingController password = TextEditingController();
  TextEditingController oldPassword = TextEditingController();
  final passwordValidation =
  RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
           backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Password",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:  (context) => Profile(),));
            },
              child: SvgPicture.asset(ImageConst.back)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: width * 0.4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Enter old password",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                      SizedBox(height: width*0.04,),
                      TextFormField(
                        controller: oldPassword,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(4),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(width * 0.06)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colorconst.secondarycolor
                                        .withOpacity(0.3))),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(width * 0.07),
                                borderSide:
                                    BorderSide(color: Colorconst.thirdcolor)),
                            filled: true,
                            fillColor: Colorconst.secondarycolor.withOpacity(0.3),
                            hintText: "Password",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.black)),
                      ),
                    ],
                  ),
                ),

                Container(
                  height: width*0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Create a new password",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(4),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(width * 0.06)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colorconst.secondarycolor.withOpacity(0.3))),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(width * 0.07),
                                borderSide: BorderSide(color: Colorconst.thirdcolor)),
                            filled: true,
                            fillColor: Colorconst.secondarycolor.withOpacity(0.3),
                            hintText: "Enter a new Password",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Colors.black)),
                      ),
                      TextFormField(

                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(4),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(width * 0.06)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colorconst.secondarycolor.withOpacity(0.3))),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(width * 0.07),
                                borderSide: BorderSide(color: Colorconst.thirdcolor)),
                            filled: true,
                            fillColor: Colorconst.secondarycolor.withOpacity(0.3),
                            hintText: "Re-enter Password",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Colors.black)),
                      ),
                    ],
                  ),
                ),
                SizedBox(),
                SizedBox(),
                SizedBox(),
                Center(
                  child: Container(
                    height: width * 0.11,
                    width: width * 0.83,
                    child: Center(
                      child: Text(
                        "Save",
                        style: TextStyle(
                            color: Colorconst.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 14),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colorconst.primarycolor,
                      borderRadius: BorderRadius.circular(width * 0.15),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
