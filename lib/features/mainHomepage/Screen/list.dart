import 'package:flutter/material.dart';

import '../../../ImageConst.dart';
import '../../../main.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              const Text("This is my favorite"),

            ],
          ),
        ),
      ),
    );
  }
}
