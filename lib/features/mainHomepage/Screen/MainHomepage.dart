import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_my_project/Modal/restuarantModal.dart';
import 'package:food_my_project/features/foodSelection/screen/menuLayout.dart';
import 'package:food_my_project/features/mainHomepage/Screen/searchItems.dart';
import '../../../ImageConst.dart';
import '../../../colorconst.dart';
import '../../../main.dart';
import '../../foodSelection/screen/mouzyFood.dart';

class Mainhomepage extends StatefulWidget {
  const Mainhomepage({super.key});

  @override
  State<Mainhomepage> createState() => _MainhomepageState();
}

class _MainhomepageState extends State<Mainhomepage> {
  Restuarantmodal mouzy = Restuarantmodal(
    hotelname: "Mouzy",
    caption: "Yummy Avil milks",
    category: "Little combos",
    bannerUrl: 'https://www.shutterstock.com/image-photo/avil-milk-malabar-special-shake-260nw-2054209715.jpg',
    imageUrl: ImageConst.mouzy,
    items: [
      {
        'item': "Choco Vanilla",
        'amount': "Rs. 200",
        'qty':0
      },
      {
        'item': "Butterscotch",
        'amount': "Rs. 200",
        'qty':0
      },
      {
        'item': "Spanish Vanilla",
        'amount': "Rs. 200",
        'qty':0
      },
    ],
  );
  Restuarantmodal momoMe = Restuarantmodal(
    hotelname: "Momo and me",
    caption: "Delicious and Spicy momos",
    category: "Specialties",
    bannerUrl: "https://img.freepik.com/free-photo/high-angle-japanese-dumplings-composition_23-2148809869.jpg?size=626&ext=jpg&ga=GA1.1.2008272138.1727395200&semt=ais_hybrid",
    imageUrl: ImageConst.momome, // Replace with an actual image URL
    items: [
      {
        'item': "Chicken Momos",
        'amount': "Rs. 250",
        'add':'//varibale which type',
        'qty':0,
      },
      {
        'item': "Mutton Momos",
        'amount': "Rs. 350",
        'qty':0,
      },
      {
        'item': "Veg momos",
        'amount': "Rs. 200",
        'qty':0,
      },
    ],
  );
  List<Restuarantmodal> restaurants = [];
  @override
  void initState() {
    super.initState();
    // Initialize the list of restaurants in initState
    restaurants = [mouzy, momoMe];
  }



  List food = [
    {'images': ImageConst.coffee, 'text': "Drinks"},
    {'images': ImageConst.burgerrr, 'text': "Burger"},
    {'images': ImageConst.cake, 'text': "Cake"},
    {'images': ImageConst.chips, 'text': "Chips"},
  ];
  List orderfood = [
    {'images': ImageConst.ham},
    {'images': ImageConst.pizzaa},
    {'images': ImageConst.momos},
    {'images': ImageConst.sushi},
    {'images': ImageConst.gulab},
    {'images': ImageConst.biriyani}
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Searchitems(),
                        ));
                  },
                  child: Container(
                      width: width * 0.9,
                      height: width * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width * 0.03),
                          color: Colorconst.secondarycolor),
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Icon(Icons.search),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Text(
                            "Search",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colorconst.divider),
                          )
                        ],
                      )),
                ),
                Container(
                  height: width * 0.1,
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(ImageConst.pin),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Text(
                          "9 West 46 Th Street, New York City",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Container(
                  height: width * 0.32,
                  width: width,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Column(children: [
                          Container(
                            width: width * 0.25,
                            height: width * 0.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width * 0.06),
                              color: Colorconst.thirdcolor.withOpacity(0.5),
                              border: Border.all(
                                  color:
                                      Colorconst.thirdcolor.withOpacity(0.3)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: SvgPicture.asset(food[index]['images']),
                            ),
                          ),
                          Text(
                            food[index]['text'],
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          )
                        ]);
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: width * 0.03,
                        );
                      },
                      itemCount: food.length),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Food Menu",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          decoration: TextDecoration.underline),
                    )
                  ],
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1,
                    crossAxisSpacing: width * 0.05,
                    mainAxisSpacing: width * 0.05,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      height: width * 0.2,
                      width: width * 0.2,
                      decoration: BoxDecoration(
                          color: Colorconst.secondarycolor,
                          image: DecorationImage(
                            image: AssetImage(orderfood[index]['images']),
                          ),
                          borderRadius: BorderRadius.circular(width * 0.03)),
                    );
                  },
                  itemCount: orderfood.length,
                ),
                Container(
                  height: width * 0.14,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Near Me",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 18),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
                ListView.separated(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      Restuarantmodal currentRestaurant = restaurants[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Menulayout(
                                    restuarantmodal: currentRestaurant),//this restuarantmodal is varable passed in data display page
                              ));
                        },
                        child: Row(
                          children: [
                            Container(
                              width: width * 0.4,
                              height: width * 0.4,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(width * 0.03),
                                image: currentRestaurant.imageUrl != null
                                    ? DecorationImage(
                                  image: AssetImage(currentRestaurant.imageUrl!),
                                  fit: BoxFit.cover,
                                )
                                    : null,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                            currentRestaurant.hotelname ?? 'Unknown Hotel',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(ImageConst.pin1),
                                    SizedBox(
                                      width: width * 0.03,
                                    ),
                                    Text(
                                      "13 th Street, 46 W 12th St, NY",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colorconst.divider),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(ImageConst.clock),
                                    SizedBox(
                                      width: width * 0.03,
                                    ),
                                    Text("3 min - 1.1 km",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colorconst.divider)),
                                  ],
                                ),
                                SvgPicture.asset(ImageConst.star)
                              ],
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: width * 0.03,
                      );
                    },
                    itemCount: restaurants.length)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
