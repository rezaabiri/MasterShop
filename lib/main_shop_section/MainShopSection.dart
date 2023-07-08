import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:MasterShop/main_shop_section/items_shop/ItemShop.dart';

class MainShopSection extends StatefulWidget {
  const MainShopSection({Key? key}) : super(key: key);

  @override
  State<MainShopSection> createState() => _MainShopSectionState();
}

class _MainShopSectionState extends State<MainShopSection> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 50, right: 16, left: 16),
            child: Column(
              children: [
                TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    prefixIcon: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: SvgPicture.asset("assets/images/search.svg")
                    ),
                    filled: true,
                    fillColor: Color(0xf001833),
                    hintText: "کالای خود را جستجو کنید",
                    hintStyle: const TextStyle(fontFamily: 'regular', fontSize: 14),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide.none
                    ),

                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 18),
                  width: double.infinity,
                  height: 160,
                  child: SvgPicture.asset("assets/images/banner_top.svg"),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 18),
                  child: Column(
                    children: [
                      const Align(
                          alignment: Alignment.centerRight,
                          child: Text("جدیدترین ها", style: TextStyle(fontSize: 14, fontFamily: 'bold'),)
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 18),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                ItemShop(),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 13, bottom: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  ItemShop(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
  Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
