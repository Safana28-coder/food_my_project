import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_my_project/ImageConst.dart';
import 'package:food_my_project/Modal/restuarantModal.dart';
import 'package:food_my_project/colorconst.dart';
import 'package:food_my_project/features/SigninSignup/screen/HomePage.dart';
import 'package:food_my_project/features/mainHomepage/Screen/BottomNavigationPage.dart';
import 'package:food_my_project/main.dart';

class Order extends StatefulWidget {
  final Restuarantmodal order;
  const Order({super.key, required this.order});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  List hotel = [
    {
      'image': ImageConst.hotel1,
    },
    {
      'image': ImageConst.hotel1,
    },
    {
      'image': ImageConst.hotel1,
    }
  ];
  @override
  void initState() {
    print(widget.order.items);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset(ImageConst.back)),
          centerTitle: true,
          title: Text(
            "Order Food",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(7.0),
          child: SingleChildScrollView(
            child: Column(
              children: [

                Text(
                  "Items in cart",
                  style: TextStyle(
                      color: Colorconst.primarycolor,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                Divider(
                  endIndent: 12,
                  indent: 12,
                ),
                ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Container(
                        height: width * 0.35,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ListTile(
                              leading: Column(
                                children: [
                                  Text(widget.order.items[index]['item']),
                                  Text(widget.order.hotelname!)
                                ],
                              ),
                              trailing: Container(
                                height: width * 0.2,
                                child: Column(
                                  children: [
                                    Container(
                                      height: width * 0.1,
                                      width: width * 0.2,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              width * 0.03),
                                          border: Border.all(
                                              color: Colorconst.primarycolor)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          GestureDetector(
                                              onTap: () {},
                                              child: Icon(
                                                CupertinoIcons.delete_simple,
                                                color: Colorconst.primarycolor,
                                              )),
                                          Text(
                                            widget.order.items[index]['qty'],
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.black),
                                          ),
                                          GestureDetector(
                                              onTap: () {

                                              },

                                              child: Icon(CupertinoIcons.add))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                      //Container(
                      //   height: width * 0.3,
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       Row(
                      //         children: [
                      //           Container(
                      //             width: width * 0.25,
                      //             height: width * 0.25,
                      //             decoration: BoxDecoration(
                      //                 image: DecorationImage(
                      //                   image: AssetImage(widget.order.imageUrl!)
                      //                 )
                      //             ),
                      //           ),
                      //           SizedBox(
                      //             width: width * 0.03,
                      //           ),
                      //           Column(
                      //             mainAxisAlignment: MainAxisAlignment.center,
                      //             children: [
                      //               Text(
                      //                 widget.order.hotelname!,
                      //                 style: TextStyle(
                      //                     fontSize: 17,
                      //                     fontWeight: FontWeight.w700),
                      //               ),
                      //               Text(
                      //                 "Rs.9.99",
                      //                 style: TextStyle(
                      //                     fontWeight: FontWeight.w500,
                      //                     fontSize: 14,
                      //                     color: Colorconst.green),
                      //               )
                      //             ],
                      //           ),
                      //         ],
                      //       ),
                      //       Row(
                      //         children: [
                      //           SvgPicture.asset(ImageConst.like),
                      //           SizedBox(
                      //             width: width * 0.03,
                      //           ),
                      //           SvgPicture.asset(ImageConst.dislike),
                      //         ],
                      //       )
                      //     ],
                      //   ),
                      // );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: width * 0.02,
                      );
                    },
                    itemCount: widget.order.items.length),
                Container(
                  height: width * 0.4,
                ),
                Center(
                  child: Container(
                    height: width * 0.11,
                    width: width * 0.83,
                    child: Center(
                      child: Text(
                        "Proceed Now",
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
