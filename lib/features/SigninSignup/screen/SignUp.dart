import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_my_project/features/SigninSignup/screen/HomePage.dart';
import 'package:food_my_project/features/mainHomepage/Screen/BottomNavigationPage.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../ImageConst.dart';
import '../../../colorconst.dart';
import '../../../main.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();

}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController newpassword = TextEditingController();
  final emailValidation = RegExp(
      (r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"));
  final passwordValidation =
  RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:   AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),));
          },
            child: SvgPicture.asset(ImageConst.back,width: 100,)),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: width*0.3,),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("Sign Up",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,fontWeight: FontWeight.w700
                  ),),
              ),
              Container(
                height: width*0.6,

                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
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
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(width*0.04),
                                borderSide: BorderSide(
                                    color: Colorconst.secondarycolor
                                )
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(width*0.04)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(width*0.07),
                                borderSide: BorderSide(
                                    color: Colorconst.thirdcolor
                                )
                            ),
                            filled: true,
                            fillColor: Colorconst.secondarycolor,
                            hintText: "Enter Username",
                            hintStyle: const TextStyle(
                                fontWeight: FontWeight.w400,fontSize: 13,
                                color: Colors.black
                            )
                        ),
                      ),
                      TextFormField(
                        controller: password,
                        validator: (value) {
                          if (passwordValidation.hasMatch(value!)) {
                            return null;
                          } else {
                            return "A 8 length password (a-z)(A-Z)(0-9)(!@#%^*&)";
                          }
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(width*0.06)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(width*0.04),
                                borderSide: BorderSide(
                                    color: Colorconst.secondarycolor
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(width*0.07),
                                borderSide: const BorderSide(
                                    color: Colorconst.thirdcolor
                                )
                            ),
                            filled: true,
                            fillColor: Colorconst.secondarycolor,
                            hintText: "Enter Password",
                            hintStyle: const TextStyle(
                                fontWeight: FontWeight.w400,fontSize: 13,
                                color: Colors.black
                            )
                        ),
                      ),
                      TextFormField(
                        controller: newpassword,
                        validator: (value) {
                          if (newpassword.text==password.text) {
                            return null;
                          } else {
                            return "Enter the same password";
                          }
                        },
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(width*0.04),
                                borderSide: BorderSide(
                                    color: Colorconst.secondarycolor
                                )
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(width*0.04)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(width*0.07),
                                borderSide: const BorderSide(
                                    color: Colorconst.thirdcolor
                                )
                            ),
                            filled: true,
                            fillColor: Colorconst.secondarycolor,
                            hintText: "Re-Enter Password",
                            hintStyle: const TextStyle(
                                fontWeight: FontWeight.w400,fontSize: 13,
                                color: Colors.black
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  if(username.text!=''&&
                    password.text!=''&&
                      newpassword.text!=""&&
                      formkey.currentState!.validate()) {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                        builder: (context) => BottomNavigationPage()),(route) => false,);
                  }
                    else{
                      username.text==''?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Enter the email ") ))
                          :password.text==''?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Enter your password") ))
                      :newpassword.text==''?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Re -enter the password ") ))
                           :ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter valid details")));
                  }
                },
                child: Center(
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
              SizedBox(height: width*0.03,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Text("Forgot password?",style:
                  GoogleFonts.roboto(
                      color: Colorconst.divider,
                      fontSize: 14,fontWeight: FontWeight.w400
                  ),),
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
                    decoration: BoxDecoration(
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

    );
  }
}
