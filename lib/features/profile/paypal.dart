import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_my_project/ImageConst.dart';
import 'package:food_my_project/colorconst.dart';
import 'package:food_my_project/features/profile/payment.dart';
import 'package:food_my_project/main.dart';

class Paypal extends StatefulWidget {
  const Paypal({super.key});

  @override
  State<Paypal> createState() => _PaypalState();
}

class _PaypalState extends State<Paypal> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Payment(),));
              },
              child: SvgPicture.asset(ImageConst.back)),
          centerTitle: true,
          title: Text("Paypal",
          style: TextStyle(
            fontSize: 18,fontWeight: FontWeight.w700
          ),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: width*0.1,
                        height: width*0.1,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(ImageConst.paypal))
                        ),
                      ),
                      Text("Paypal",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colorconst.divider),)
                    ],
                  ),
                  Text("Itog@gmail.com",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w400),)
                ],
              ),
          Container(
            height: width*0.9,
          ),
              Container(
                height: width*0.5,

                child: Column(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Container(
                        height: width * 0.11,
                        width: width * 0.83,
                        child: Center(
                          child: Text(
                            "Make as default",
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
                    Center(
                      child: Container(
                        height: width * 0.11,
                        width: width * 0.83,
                        child: Center(
                          child: Text(
                            "Remove",
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
              )
            ],
          ),
        ),
      ),
    );

  }
}
