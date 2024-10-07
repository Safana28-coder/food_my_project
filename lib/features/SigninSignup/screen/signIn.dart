import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_my_project/ImageConst.dart';
import 'package:food_my_project/colorconst.dart';
import 'package:food_my_project/features/SigninSignup/screen/HomePage.dart';
import 'package:food_my_project/features/mainHomepage/Screen/BottomNavigationPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../main.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool toggle=false;
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  final emailValidation = RegExp(
      (r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"));
  final passwordValidation =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.white,
          leading: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Homepage(),
                    ));
              },
              child: SvgPicture.asset(
                ImageConst.back,
                width: 100,
              )),
        ),
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: width * 0.4,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: width * 0.5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextFormField(
                          controller: username,
                          validator: (value) {
                            if (emailValidation.hasMatch(value!)) {
                              return null;
                            } else {
                              return "enter valid email";
                            }
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(width*0.04),
                              borderSide: BorderSide(
                                color: Colorconst.secondarycolor
                              )
                            ),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(width * 0.04)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(width * 0.07),
                                  borderSide: BorderSide(
                                      color: Colorconst.secondarycolor
                                          .withOpacity(0.2))),
                              filled: true,
                              fillColor: Colorconst.secondarycolor,
                              hintText: "Enter your email",

                              hintStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: Colors.black)),
                        ),
                        TextFormField(
                          controller: password,
                          validator: (value) {
                            if (passwordValidation.hasMatch(value!)) {
                              return null;
                            } else {
                              return "Please give correct password";
                            }
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          maxLength: 8,
                          obscureText: toggle==true?false:true,
                          obscuringCharacter: '*',

                          decoration: InputDecoration(
                              suffixIcon:GestureDetector(
                                  onTap: () {
                                    toggle=!toggle;
                                    setState(() {

                                    });
                                  },

                                  child: toggle==true? Icon(CupertinoIcons.eye_fill):Icon(CupertinoIcons.eye_slash)),
                            counterText: "",
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(width*0.04),
                                  borderSide: BorderSide(
                                      color: Colorconst.secondarycolor
                                  )
                              ),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(width * 0.04)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(width * 0.07),
                                  borderSide: BorderSide(
                                      color: Colorconst.secondarycolor
                                          .withOpacity(0.2))),
                              filled: true,
                              fillColor: Colorconst.secondarycolor,
                              hintText: "Password",
                              hintStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: Colors.black)),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: GestureDetector(
                    onTap: () async {
                      SharedPreferences prefs=await SharedPreferences.getInstance();
                      prefs.setBool('login', true);
                      if (username.text != "" &&
                          password.text != "" &&
                          formkey.currentState!.validate()) {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNavigationPage(),
                            ),(route) => false,);
                      } else {
                        username.text==''?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Please enter the email")))
                            :password.text==''?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your password")))
                                :ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter the fields")));
                      }
                    },
                    child: Container(
                      height: width * 0.11,
                      width: width * 0.83,
                      decoration: BoxDecoration(
                        color: Colorconst.primarycolor,
                        borderRadius: BorderRadius.circular(width * 0.15),
                      ),
                      child: const Center(
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              color: Colorconst.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: width * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Text(
                        "Forgot password?",
                        style: GoogleFonts.roboto(
                            color: Colorconst.divider,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: width * 0.28,
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
