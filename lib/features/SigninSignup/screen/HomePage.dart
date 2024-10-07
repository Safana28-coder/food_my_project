import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_my_project/ImageConst.dart';
import 'package:food_my_project/colorconst.dart';
import 'package:food_my_project/features/SigninSignup/screen/SignUp.dart';
import 'package:food_my_project/features/SigninSignup/screen/signIn.dart';
import 'package:google_fonts/google_fonts.dart';

import '/main.dart';




class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: width * 0.16,
                ),
                Container(
                  width: width * 0.6,
                  height: width * 0.6,
                  child: Image(image: AssetImage(ImageConst.burger)),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn(),));
                  },
                  child: Container(
                    height: width * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: width * 0.11,
                          width: width * 0.83,
                          child: Center(
                            child: Text(
                              "Sign In",
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
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage(),));
                          },
                          child: Container(
                            height: width * 0.11,
                            width: width * 0.83,
                            child: Center(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colorconst.secondarycolor,
                              borderRadius: BorderRadius.circular(width * 0.15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: width * 0.34,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: width * 0.65,
                      height: width * 0.005,
                      color: Colorconst.divider.withOpacity(0.2),
                    ),
                    Text(
                      "Or connect with",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colorconst.divider,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.00001,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: width * 0.4,
                      height: width * 0.4,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ImageConst.food))),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(ImageConst.facebook),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        SvgPicture.asset(ImageConst.google),
                        SizedBox(
                          width: width * 0.02,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
