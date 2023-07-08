import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../main_shop_section/item_details/ItemDetails.dart';

class ItemCategory extends StatelessWidget {
  const ItemCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: 175,
                height: 240,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black12,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ItemDetails()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 50,
                    height: 50,
                    child: Column(
                      children: [
                        SizedBox(
                            width: 130,
                            height: 180,
                            child: Image.asset("assets/images/item_one.png")),
                        Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text(
                              "بافت پشمی",
                              style: TextStyle(fontSize: 14, fontFamily: 'bold'),
                            )),
                      ],
                    ),
                  ),
                )),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ItemDetails()));
              },
              child: Container(
                margin: EdgeInsets.only(left: 10),
                width: 175,
                height: 240,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black12,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      SizedBox(
                          width: 130,
                          height: 180,
                          child: Image.asset("assets/images/item_two.png")),
                      Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            "بافت نخی",
                            style: TextStyle(fontSize: 14, fontFamily: 'bold'),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: 175,
                  height: 240,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black12,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ItemDetails()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 50,
                      height: 50,
                      child: Column(
                        children: [
                          SizedBox(
                              width: 130,
                              height: 180,
                              child: Image.asset("assets/images/item_one.png")),
                          Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text(
                                "بافت پشمی",
                                style: TextStyle(fontSize: 14, fontFamily: 'bold'),
                              )),
                        ],
                      ),
                    ),
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ItemDetails()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 175,
                  height: 240,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black12,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        SizedBox(
                            width: 130,
                            height: 180,
                            child: Image.asset("assets/images/item_two.png")),
                        Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text(
                              "بافت نخی",
                              style: TextStyle(fontSize: 14, fontFamily: 'bold'),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
