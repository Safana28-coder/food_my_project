import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_my_project/ImageConst.dart';
import 'package:food_my_project/features/profile/payment.dart';

import '../../colorconst.dart';
import '../../main.dart';

class Addcredit extends StatefulWidget {
  const Addcredit({super.key});

  @override
  State<Addcredit> createState() => _AddcreditState();
}

class _AddcreditState extends State<Addcredit> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Payment(),));
              },
              child: SvgPicture.asset(ImageConst.back)),
          title: const Text(
            "Add Credit Card",
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 18, color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Container(
                height: width * 0.6,
                width: width * 0.9,
                decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage(ImageConst.cards))),
              ),
             Container(
               height: width*0.6,
               child:Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(
                         "Bank Name",
                         style: TextStyle(
                             fontWeight: FontWeight.w400,
                             fontSize: 14,
                             color: Colors.black.withOpacity(0.3)),
                       ),
                       const Text(
                         "AZRAEN Bank",
                         style: TextStyle(
                             color: Colors.black,
                             fontSize: 14,
                             fontWeight: FontWeight.w500),
                       )
                     ],
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(
                         "Your Name",
                         style: TextStyle(
                             fontWeight: FontWeight.w400,
                             fontSize: 14,
                             color: Colors.black.withOpacity(0.3)),
                       ),
                       const Text(
                         "Itoh ",
                         style: TextStyle(
                             color: Colors.black,
                             fontSize: 14,
                             fontWeight: FontWeight.w500),
                       )
                     ],
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(
                         "Card Number",
                         style: TextStyle(
                             fontWeight: FontWeight.w400,
                             fontSize: 14,
                             color: Colors.black.withOpacity(0.3)),
                       ),
                       const Text(
                         "4444 7753 3352 8637",
                         style: TextStyle(
                             color: Colors.black,
                             fontSize: 14,
                             fontWeight: FontWeight.w500),
                       )
                     ],
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(
                         "Date",
                         style: TextStyle(
                             fontWeight: FontWeight.w400,
                             fontSize: 14,
                             color: Colors.black.withOpacity(0.3)),
                       ),
                       const Text(
                         "11/25",
                         style: TextStyle(
                             color: Colors.black,
                             fontSize: 14,
                             fontWeight: FontWeight.w500),
                       )
                     ],
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(
                         "CVV",
                         style: TextStyle(
                             fontWeight: FontWeight.w400,
                             fontSize: 14,
                             color: Colors.black.withOpacity(0.3)),
                       ),
                       const Text(
                         "532",
                         style: TextStyle(
                             color: Colors.black,
                             fontSize: 14,
                             fontWeight: FontWeight.w500),
                       )
                     ],
                   ),
                 ],
               ),
             ),
              Center(
                child: Container(
                  height: width * 0.11,
                  width: width * 0.83,
                  decoration: BoxDecoration(
                    color: Colorconst.primarycolor,
                    borderRadius: BorderRadius.circular(width * 0.15),
                  ),
                  child: const Center(
                    child: Text(
                      "Add",
                      style: TextStyle(
                          color: Colorconst.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
