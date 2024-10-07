import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_my_project/ImageConst.dart';
import 'package:food_my_project/features/profile/payment.dart';

import '../../colorconst.dart';
import '../../main.dart';

class Newcard extends StatefulWidget {
  const Newcard({super.key});

  @override
  State<Newcard> createState() => _NewcardState();
}

class _NewcardState extends State<Newcard> {
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Payment(),
                    ));
              },
              child: SvgPicture.asset(ImageConst.back)),
          title: Text(
            "Add New card",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 Container(
                   height: width*0.8,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       TextField(
                         keyboardType: TextInputType.number,
                         cursorColor: Colors.blueGrey,
                         maxLength: 16,
                         textInputAction: TextInputAction.next,
                         decoration: InputDecoration(
                           hintText: "Card Number",
                           hintStyle: TextStyle(
                               color: Colors.black,
                               fontSize: 13,
                               fontWeight: FontWeight.w400),
                           fillColor: Colorconst.secondarycolor,
                           filled: true,
                           counterText: "",
                           focusedBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(width * 0.04),
                               borderSide:
                               BorderSide(color: Colorconst.secondarycolor)),
                           border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(width * 0.06)),
                           enabledBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(width * 0.07),
                               borderSide: BorderSide(
                                   color: Colorconst.secondarycolor.withOpacity(0.2))),
                         ),
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Container(
                             height: width * 0.15,
                             width: width * 0.6,
                             child: TextField(
                               keyboardType: TextInputType.number,
                               decoration: InputDecoration(
                                 fillColor: Colorconst.secondarycolor,
                                 filled: true,
                                 focusedBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(width * 0.06),
                                     borderSide:
                                     BorderSide(color: Colorconst.secondarycolor)),
                                 border: OutlineInputBorder(
                                     borderRadius:
                                     BorderRadius.circular(width * 0.06)),
                                 enabledBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(width * 0.06),
                                     borderSide: BorderSide(
                                         color: Colorconst.secondarycolor
                                             .withOpacity(0.2))),
                                 hintText: "Valid through(MM/YY)",
                                 hintStyle: TextStyle(
                                     color: Colors.black,
                                     fontSize: 13,
                                     fontWeight: FontWeight.w400),
                               ),
                             ),
                           ),
                           Container(

                             height: width * 0.15,
                             width: width * 0.3,
                             child: TextField(
                               keyboardType: TextInputType.number,
                               decoration: InputDecoration(
                                 fillColor: Colorconst.secondarycolor,
                                 filled: true,
                                 focusedBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(width * 0.06),
                                     borderSide:
                                     BorderSide(color: Colorconst.secondarycolor)),
                                 border: OutlineInputBorder(
                                     borderRadius:
                                     BorderRadius.circular(width * 0.06)),
                                 enabledBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(width * 0.06),
                                     borderSide: BorderSide(
                                         color: Colorconst.secondarycolor
                                             .withOpacity(0.2))),
                                 hintText: "CVV",
                                 hintStyle: TextStyle(
                                     color: Colors.black,
                                     fontSize: 13,
                                     fontWeight: FontWeight.w400),
                               ),
                             ),
                           ),
                         ],
                       ),
                       TextField(
                         cursorColor: Colors.blueGrey,
                         textInputAction: TextInputAction.next,
                         decoration: InputDecoration(
                           hintText: "Name on Card",
                           hintStyle: TextStyle(
                               color: Colors.black,
                               fontSize: 13,
                               fontWeight: FontWeight.w400),
                           fillColor: Colorconst.secondarycolor,
                           filled: true,
                           counterText: "",
                           focusedBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(width * 0.04),
                               borderSide:
                               BorderSide(color: Colorconst.secondarycolor)),
                           border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(width * 0.06)),
                           enabledBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(width * 0.07),
                               borderSide: BorderSide(
                                   color: Colorconst.secondarycolor.withOpacity(0.2))),
                         ),
                       ),
                       TextField(
                         cursorColor: Colors.blueGrey,
                         textInputAction: TextInputAction.next,
                         decoration: InputDecoration(
                           hintText: "Card  Nickname(For easy identification)",
                           hintStyle: TextStyle(
                               color: Colors.black,
                               fontSize: 13,
                               fontWeight: FontWeight.w400),
                           fillColor: Colorconst.secondarycolor,
                           filled: true,
                           counterText: "",
                           focusedBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(width * 0.04),
                               borderSide:
                               BorderSide(color: Colorconst.secondarycolor)),
                           border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(width * 0.06)),
                           enabledBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(width * 0.07),
                               borderSide: BorderSide(
                                   color: Colorconst.secondarycolor.withOpacity(0.2))),
                         ),
                       ),
                     ],
                   ),
                 ),
                  Container(
                    height: width * 0.6,
                  ),
                  Container(
                    height: width * 0.11,
                    width: width * 0.83,
                    decoration: BoxDecoration(
                      color: Colorconst.primarycolor,
                      borderRadius: BorderRadius.circular(width * 0.15),
                    ),
                    child: const Center(
                      child: Text(
                        "Proceed",
                        style: TextStyle(
                            color: Colorconst.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 14),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
