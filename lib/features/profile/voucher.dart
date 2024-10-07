import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_my_project/ImageConst.dart';
import 'package:food_my_project/colorconst.dart';
import 'package:food_my_project/features/profile/profile.dart';

import '../../main.dart';

class Voucher extends StatefulWidget {
  const Voucher({super.key});

  @override
  State<Voucher> createState() => _VoucherState();
}

class _VoucherState extends State<Voucher> {
  int selected_index=0;

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
                Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(),));
              },
              child: SvgPicture.asset(ImageConst.back)),
          title: Text("Voucher",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
        ),
             body: Column(
               children: [
               ListView.separated(
                 scrollDirection: Axis.vertical,
                   shrinkWrap: true,
                   physics: BouncingScrollPhysics(),
                   itemBuilder: (context, index) {
                     return GestureDetector(
                       onTap:() {

                         selected_index=index;
                         setState(() {

                         });

                       },
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Container(
                             height: width*0.29,
                             width: width*0.29,
                             decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(width*0.06),
                               color: Colorconst.secondarycolor,
                               image: DecorationImage(image: AssetImage(ImageConst.voucher),fit: BoxFit.contain)
                             ),
                           ),
                           Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("Sale off 30% for Pizza",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14,color: Colorconst.divider),),
                               Row(
                                 children: [
                                   SvgPicture.asset(ImageConst.clock),
                                   SizedBox( width: width*0.03,),
                                   Text("Apr 10 - Apr 30",style: TextStyle(color: Colorconst.divider,fontSize: 14,fontWeight: FontWeight.w400),),
                                 ],
                               ),
                               Text("11 days left",style: TextStyle(
                                 fontWeight: FontWeight.w500,fontSize: 14,color: Colors.red
                               ),)
                             ],
                           ),
                           GestureDetector(

                             onTap:() {

                               selected_index=index;
                               setState(() {

                               });
                               print(selected_index);
                             },
                             child: CircleAvatar(
                               radius: width*0.045,
                               child: selected_index==index?Icon(Icons.check,color: Colorconst.white,):SizedBox(),
                               backgroundColor: selected_index==index?Colorconst.primarycolor: Colorconst.secondarycolor,
                             ),
                           )
                         ],
                       ),
                     );
                   },
                   separatorBuilder: (context, index) {

                     return SizedBox(
                       height: width*0.04
                     );
                   },
                   itemCount: 3),
                 Container(height: width*0.3,),
                 Center(
                   child: Container(
                     height: width * 0.11,
                     width: width * 0.83,
                     child: Center(
                       child: Text(
                         "Send",
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
    );
  }
}
