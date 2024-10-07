
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_my_project/ImageConst.dart';
import 'package:food_my_project/features/SigninSignup/screen/HomePage.dart';
import 'package:food_my_project/features/profile/password.dart';
import 'package:food_my_project/features/profile/payment.dart';
import 'package:food_my_project/features/profile/voucher.dart';
import 'package:food_my_project/main.dart';

import '../../colorconst.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: width*0.15,
                ),
                CircleAvatar(
                   radius: width*0.2,
                  backgroundImage: AssetImage(ImageConst.profileimage),
                ),
                SizedBox(height: width*0.05,),
                Text("Itoh",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                SizedBox(height: width*0.04),
                Text("+9123537849"),
                SizedBox(height: width*0.05),
                Column(
                  children: [
                    ListTile(
                      leading: Text("My Profile",style:  TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                      trailing:  SvgPicture.asset(ImageConst.right),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Password(),));
                      },
                      child:ListTile(
                        leading:  Text("Change Password",style:  TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                        trailing: SvgPicture.asset(ImageConst.right),
                      )

                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Payment(),));
                      },

                      child:ListTile(
                        trailing:SvgPicture.asset(ImageConst.right),
                        leading:   Text("Payment settings",style:  TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Voucher(),));
                      },

                      child:
                      ListTile(
                        trailing:SvgPicture.asset(ImageConst.right),
                        leading:   Text("Voucher",style:  TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                      ),

                    ),
                    ListTile(
                      trailing:
                      SvgPicture.asset(ImageConst.right)    ,
                      leading: Text("Notification",style:  TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                    ),
                    ListTile(
                      trailing:
                      SvgPicture.asset(ImageConst.right)    ,
                      leading: Text("Contact us",style:  TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                    ),
                    ListTile(
                      trailing:
                      SvgPicture.asset(ImageConst.right)    ,
                      leading: Text("About us",style:  TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                    ),
                  ],
                ),
               SizedBox(
                 height: width*0.03,
               ),
                GestureDetector(
                   onTap: () {
                     FirebaseAuth.instance.signOut();
                     Navigator.push(context, MaterialPageRoute(builder:(context) => Homepage(),),);
                   },
                  child: Container(
                    height: width * 0.11,
                    width: width * 0.83,
                    child: Center(
                      child: Text(
                        "Sign Out",
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
      ),
    );
  }
}
