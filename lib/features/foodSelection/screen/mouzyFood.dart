import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_my_project/ImageConst.dart';
import 'package:food_my_project/colorconst.dart';
import 'package:food_my_project/features/mainHomepage/Screen/BottomNavigationPage.dart';
import 'package:food_my_project/main.dart';

class mouzyfood extends StatefulWidget {

  
  const mouzyfood({super.key});

  @override
  State<mouzyfood> createState() => _mouzyfoodState();
}

class _mouzyfoodState extends State<mouzyfood> {
  bool toggle = false;
  int count = 1;
  List littlecombos = [
    {'text': "Little strawberry", 'cash': "110"},
    {'text': "Little Mango", 'cash': "130"},
    {'text': "Little Pista", 'cash': "120"},
    {'text': "Little Choco", 'cash': "100"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigationPage(),));
            },
            child: SvgPicture.asset(ImageConst.back)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: width * 0.35,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mouzy avil milk",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: 17),
                    ),
                    Text(
                      "Yummy avil milk",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.5)),
                    ),
                    Row(
                      children: [
                        Icon(Icons.directions_bike_sharp),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Text(
                          "4 km",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.5)),
                        ),
                        SizedBox(
                          width: width * 0.07,
                        ),
                        Icon(CupertinoIcons.clock),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Text(
                          "50 min",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.5)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              TextField(
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
              Container(
                height: width * 0.15,
              ),
              Text(
                "Little Combo",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black),
              ),
              Divider(
                color: Colors.black.withOpacity(0.3),
              ),
              ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return MenuCardClass(index: index);

                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: width * 0.03);
                  },
                  itemCount: littlecombos.length)
            ],
          ),
        ),
      ),
    );
  }
}

class MenuCardClass extends StatefulWidget {
  final int index;
  const MenuCardClass({super.key, required this.index});

  @override
  State<MenuCardClass> createState() => _MenuCardClassState();
}

class _MenuCardClassState extends State<MenuCardClass> {
  int index = 0;
  bool toggle = false;
  int count = 0;
  List littlecombos = [
    {'text': "Little strawberry", 'cash': "110"},
    {'text': "Little Mango", 'cash': "130"},
    {'text': "Little Pista", 'cash': "120"},
    {'text': "Little Choco", 'cash': "100"},
  ];

  @override
  void initState() {
    index = widget.index;

    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return
      ListTile(
        leading: Container(
          width: width * 0.04,
          height: width * 0.04,
          decoration: BoxDecoration(
              border: Border.all(color: Colorconst.primarycolor),
              borderRadius: BorderRadius.circular(width * 0.03)),
          child: CircleAvatar(
            radius: width * 0.01,
            backgroundColor: Colors.green.shade700,
          ),
        ),
        title: Text(
          littlecombos[index]['text'],
          style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w400),
          littlecombos[index]['cash'],
        ),
        trailing: InkWell(
            onTap: () {
              toggle = true;
              setState(() {});
            },
            child: toggle == false
                ? Container(
              height: width * 0.18,
              width: width * 0.28,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colorconst.primarycolor),
                borderRadius:
                BorderRadius.circular(width * 0.03),
              ),
              child: Center(
                child: Text(
                  "Add",
                  style: TextStyle(
                      color: Colorconst.primarycolor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
            )
                : Container(
              height: width * 0.18,
              width: width * 0.28,
              child: Center(
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: GestureDetector(
                            onTap: () {
                              count++;
                              setState(() {});
                            },
                            child: Container(
                                width: width*0.05,
                                height: width*0.05,
                                child: Icon(Icons.add)))),
                    Text(count.toString()),
                    GestureDetector(
                        onTap: () {
                          if(count>0){
                            count--;
                            setState(() {

                            });
                          }
                        },
                        child: Container(
                            width: width*0.05,
                            height: width*0.05,
                            child: Icon(Icons.remove)))
                  ],
                ),
              ),
            )),
      );

      ;
  }
}
