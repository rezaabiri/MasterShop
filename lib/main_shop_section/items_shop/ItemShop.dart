
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:MasterShop/main_shop_section/item_details/ItemDetails.dart';

class ItemShop extends StatelessWidget {
  const ItemShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 175,
          height: 315,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black12,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(20),
          ),

          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ItemDetails()));
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
                      child: Text("بافت پشمی", style: TextStyle(fontSize: 14, fontFamily: 'bold'),)
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("تومان ", style: TextStyle(fontSize: 14, fontFamily: 'bold', color: hexToColor("#FF7465")),),
                          Text("850,000", style: TextStyle(fontSize: 14, fontFamily: 'bold', color: hexToColor("#FF7465")),),
                        ],
                      )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 20),
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(hexToColor("#FF7465")),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )
                          )
                      ),
                      onPressed: () { },
                      child: Text('افزودن به سبد خرید', style: TextStyle(fontSize: 10, fontFamily: 'bold'),),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ItemDetails()));
          },
          child: Container(
            margin: EdgeInsets.only(left: 10),
            width: 175,
            height: 315,
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
                      child: Text("بافت پشمی", style: TextStyle(fontSize: 14, fontFamily: 'bold'),)
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("تومان ", style: TextStyle(fontSize: 14, fontFamily: 'bold', color: hexToColor("#FF7465")),),
                          Text("250,000", style: TextStyle(fontSize: 14, fontFamily: 'bold', color: hexToColor("#FF7465")),),
                        ],
                      )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 20),
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(hexToColor("#FF7465")),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )
                          )
                      ),
                      onPressed: () { },
                      child: Text('افزودن به سبد خرید', style: TextStyle(fontSize: 10, fontFamily: 'bold'),),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
  Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
