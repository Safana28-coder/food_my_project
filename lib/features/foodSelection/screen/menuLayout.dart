import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_my_project/Modal/restuarantModal.dart';
import 'package:food_my_project/colorconst.dart';
import 'package:food_my_project/features/mainHomepage/Screen/order.dart';
import 'package:food_my_project/features/profile/AddCredit.dart';
import 'package:food_my_project/main.dart';

class Menulayout extends StatefulWidget {
  final Restuarantmodal restuarantmodal;
  const Menulayout({super.key, required this.restuarantmodal});

  @override
  State<Menulayout> createState() => _MenulayoutState();
}

class _MenulayoutState extends State<Menulayout> {
  List cart=[];
  List a=[];

  int select = 0;
  @override
  void initState() {
    print(cart);
    super.initState();
    // Initialize the list of restaurants in initState

  }
  int count = 1;
  bool toggle = false;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colorconst.primarycolor,
        child: Icon(
        CupertinoIcons.cart,
          color: Colors.white,
          size: 16,
        ),
        onPressed: () {
          a=cart.last;
               Navigator.push(context, MaterialPageRoute(builder: (context) => Order(
                 order: Restuarantmodal()
                ) ));
       print(a);
        },
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CarouselSlider.builder(
                  itemCount: widget.restuarantmodal.bannerUrl?.length,
                  itemBuilder: (context, index, realIndex) {
                    return Container(
                      width: width * 0.6,
                      height: width * 0.4,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          image: DecorationImage(
                              image: NetworkImage(
                                  widget.restuarantmodal.bannerUrl!),
                              fit: BoxFit.fill)),
                    );
                  },
                  options: CarouselOptions(
                    viewportFraction: 1,
                    autoPlay: true,
                    height: width * 0.5,
                    onPageChanged: (index, reason) {
                      select = index;
                      setState(() {});
                    },
                  )),
              Container(
                height: width * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ' ${widget.restuarantmodal.hotelname}',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 28,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '${widget.restuarantmodal.caption}',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.3),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        SizedBox(width: width * 0.03),
                        Text(
                          "3.86  (281+rating)",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Center(
                child: Container(
                  width: width * 0.7,
                  height: width * 0.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.motorcycle),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text("3km"),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Icon(CupertinoIcons.clock),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text("49 min")
                    ],
                  ),
                ),
              ),
              Container(
                height: width * 0.2,
                child: Center(
                  child: TextField(
                    cursorColor: Colors.black.withOpacity(0.5),
                    decoration: InputDecoration(
                      suffixIcon: Icon(CupertinoIcons.search),
                      hintText: "Search for items",
                      hintStyle: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.5)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width * 0.04),
                          borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.5),
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width * 0.04),
                          borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.5),
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width * 0.04),
                          borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.5),
                          )),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: width * 0.03,
              ),
              Text(
                '${widget.restuarantmodal.category}',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
              Divider(
                color: Colors.black.withOpacity(0.3),
              ),
              SizedBox(
                height: width * 0.03,
              ),
              ListView.separated(
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.restuarantmodal.items[index]['item']!,
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 17,
                                color: Colors.black),
                          ),
                          Text(
                            widget.restuarantmodal.items[index]['amount']
                                .toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      trailing: GestureDetector(
                        onTap: () {
                          // ScaffoldMessenger.of(context).showSnackBar(
                          //     SnackBar(
                          //     backgroundColor: Colors.white,
                          //
                          //     content:GestureDetector(
                          //     onTap: () {
                          //       List<Map<String,dynamic>> cart=[];
                          //       if(widget.restuarantmodal.items[index]["qty"]>0){
                          //         cart.add(widget.restuarantmodal.items[index]);
                          //       }
                          //     Navigator.push(context, MaterialPageRoute(builder: (context) => Order(
                          //       order: widget.restuarantmodal.copyWith(items: cart)
                          //
                          //     ),));
                          //    },
                          //    child: Container(
                          //     width: width*0.7,
                          //     height: width*0.15,
                          //     color: Colorconst.primarycolor,
                          //     child: Row(
                          //       mainAxisAlignment: MainAxisAlignment.center,
                          //       crossAxisAlignment: CrossAxisAlignment.center,
                          //       children: [
                          //         Icon(CupertinoIcons.cart,color: Colors.white,),
                          //         Text("Go to cart",style: TextStyle(
                          //           fontSize: 18,fontWeight: FontWeight.w800,color: Colors.white
                          //         ),),
                          //       ],
                          //     ),
                          //   ),
                          // )));
                          if (widget.restuarantmodal.items[index]['qty'] == 0) {

                            widget.restuarantmodal.items[index]['qty']++;
                            setState(() {});
                          }
                        },
                        child: widget.restuarantmodal.items[index]['qty'] == 0
                            ? Container(
                                height: width * 0.1,
                                width: width * 0.2,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(width * 0.2),
                                    border: Border.all(
                                        color: Colorconst.primarycolor)),
                                child: Center(
                                  child: Text(
                                    "ADD",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              )
                            : Container(
                                height: width * 0.1,
                                width: width * 0.23,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(width * 0.2),
                                    border: Border.all(
                                        color: Colorconst.primarycolor)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          if (widget.restuarantmodal
                                                  .items[index]['qty'] >
                                              0) {
                                            widget.restuarantmodal.items[index]
                                                ['qty']--;
                                            setState(() {});
                                          }
                                        },
                                        child: Icon(Icons.remove)),
                                    Text(
                                      widget.restuarantmodal.items[index]['qty']
                                          .toString(),
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          widget.restuarantmodal.items[index]
                                              ['qty']++;
                                          cart.add(widget.restuarantmodal.items[index]['qty']);
                                          setState(() {});
                                        },
                                        child: Icon(Icons.add))
                                  ],
                                ),
                              ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: width * 0.02,
                    );
                  },
                  itemCount: widget.restuarantmodal.items.length)
            ],
          ),
        ),
      ),
    );
  }
}

