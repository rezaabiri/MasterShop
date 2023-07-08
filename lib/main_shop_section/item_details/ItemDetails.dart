import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:MasterShop/ToastClass.dart';

import '../../cart/Cart.dart';
import '../../main/StartPage.dart';


class ItemDetails extends StatefulWidget {
  const ItemDetails({Key? key}) : super(key: key);

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  var rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50, left: 16, right: 16),
        child: Center(
          child: Column(
            children: [
              Container(
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
              Image.asset("assets/images/item_one.png", height: 400, width: 300,),
              SvgPicture.asset("assets/images/dotted.svg", height: 5, width: 10,),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("510,000", style: TextStyle(fontSize: 24, fontFamily: 'bold', color: hexToColor("#FF7465") ),),
                    const Text("ژاکت پشمی", style: TextStyle(fontSize: 24, fontFamily: 'bold' ),),
                  ],
                ),

              ),
              Container(
                margin: const EdgeInsets.only(top: 5),
                child: const Align(
                  alignment: Alignment.centerRight,
                    child: Text("برند مینا", style: TextStyle(fontSize: 14, fontFamily: 'regular', color: Colors.grey ),)
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 5),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    itemSize: 25,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    textDirection: TextDirection.rtl,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                      },
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Text("ژاکت پشمی از برند مینا با کیفیت بالا در رنگ های متنوع در اختیار شما کاربر عزیز قرار گرفته است جهت خرید دکه افزودن به سبد را لمس کنید.",
                  style: TextStyle(fontSize: 18, fontFamily: 'bold', color: Colors.black54),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 65,
                          height: 65,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 1,
                              backgroundColor: hexToColor("#F7F8FB"),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                              )
                            ),
                            onPressed: () {
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Cart()));
                            },
                            child: Icon(Icons.shopping_cart_outlined, color: hexToColor("#FF7465")),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 16),
                            width: double.infinity,
                            height: 65,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(hexToColor("#FF7465")),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40),
                                      )
                                  )
                              ),
                              onPressed: () {
                                ToastClass().showToastMessage("به سبد خرید اضافه شد");
                              },
                              child: const Text('افزودن به سبد خرید', style: TextStyle(fontSize: 18, fontFamily: 'regular'),),
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
