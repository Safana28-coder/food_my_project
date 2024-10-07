import 'package:flutter/material.dart';
import 'package:food_my_project/main.dart';

class Searchitems extends StatefulWidget {
  const Searchitems({super.key});

  @override
  State<Searchitems> createState() => _SearchitemsState();
}

class _SearchitemsState extends State<Searchitems> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Search your favourite",
          style: TextStyle(fontSize: 16,fontWeight:  FontWeight.w500),),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: width*0.5,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search your fave",
      
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
