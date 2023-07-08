import 'package:flutter/material.dart';
import 'package:MasterShop/category/ItemCategory.dart';

import '../main/StartPage.dart';
class MainCategory extends StatefulWidget {
  const MainCategory({Key? key}) : super(key: key);

  @override
  State<MainCategory> createState() => _MainCategoryState();
}

class _MainCategoryState extends State<MainCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StartPage()));
                }, icon: const Icon(Icons.arrow_back_ios_new_outlined, size: 20,)),
                const Text("دسته بندی", style: TextStyle(fontSize: 18, fontFamily: 'bold'),),
                const Icon(Icons.more_horiz_rounded),

              ],
            ),
          ),

          Container(
              margin: const EdgeInsets.only(top: 10, left:16, right: 16),
              child: ItemCategory()),
        ],
      ),
    );
  }
}
