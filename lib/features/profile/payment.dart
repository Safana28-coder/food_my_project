import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_my_project/ImageConst.dart';
import 'package:food_my_project/colorconst.dart';
import 'package:food_my_project/features/profile/AddCredit.dart';
import 'package:food_my_project/features/profile/newcard.dart';
import 'package:food_my_project/features/profile/paypal.dart';
import 'package:food_my_project/features/profile/profile.dart';
import 'package:food_my_project/main.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  List payment=[
    {
      'image':ImageConst.paypal,
      'text':"itoh@gmail.com",
      'text1':"Paypal"
    },
    {
      'image':ImageConst.mastercard,
      'text':"4444 ******** 4221",
      'text1':"Card"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(),));
              },
              child: SvgPicture.asset(ImageConst.back)),
          centerTitle: true,
          title: Text("Payment Method",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListView.separated(
                 physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder:(context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Paypal(),));
                          },
                          child: Row(
                            children: [
                              Container(
                                width: width*0.1,
                                height: width*0.1,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage(payment[index]['image'])),
                                ),
                              ),
                              Text(payment[index]['text1'])
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Addcredit(),));
                          },
                          child: Row(
                            children: [
                              Text(payment[index]['text'],style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.black.withOpacity(0.4)),),
                              SvgPicture.asset(ImageConst.right)
                            ],
                          ),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {

                    return SizedBox(height: width*0.04,);
                  },
                  itemCount: payment.length),
              SizedBox(height: width*0.03,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>Newcard(),));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(ImageConst.creditcard),
                        SizedBox(width: width*0.03,),
                        Text("Add payment method",style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.black.withOpacity(0.4)),)
                      ],
                    ),
                    Container(
                      width: width*0.07,
                      height: width*0.07,
                      decoration: BoxDecoration(
                        color: Colorconst.secondarycolor.withOpacity(0.6),
                         borderRadius: BorderRadius.circular(width*0.02)
                      ),
                      child: SvgPicture.asset(ImageConst.plus),
                    )
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
