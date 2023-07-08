import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:MasterShop/cart/ResultPay.dart';
import 'package:MasterShop/cart/item_cart/ItemCart.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  bool isChecked = false;

  bool isChecked1 = false;
  bool isChecked2 = false;

  String total = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 20,
                ),
                Text(
                  "سبد خرید",
                  style: TextStyle(fontSize: 18, fontFamily: 'bold'),
                ),
                Icon(Icons.more_horiz_rounded)
              ],
            ),
          ),
              Container(
              margin: const EdgeInsets.only(left: 16, right: 16),
              child: ItemCart(
                onCheckboxClicked: (String isChecked1) {
                  setState(() {
                    total = isChecked1;
                    // بروزرسانی مقدار متن و دیگر عملیات‌های مورد نیاز
                  });
                },
              )),
              Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 230,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(
                                left: 10, right: 26, top: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Checkbox(
                                  checkColor: Colors.white,
                                  value: isChecked,
                                  fillColor: MaterialStateProperty.all<Color>(
                                      hexToColor("#FF7465")),
                                  shape: const RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(4)),
                                      side: BorderSide.none),
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  },
                                ),
                                const Text(
                                  "انتخاب همه",
                                  style: TextStyle(
                                      fontSize: 14, fontFamily: 'regular'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.only(
                                left: 20, right: 20, top: 10),
                            child: const DottedLine(
                              dashLength: 5,
                              dashColor: Colors.grey,
                            )),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 26, right: 26, top: 26),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                total,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'regular',
                                    color: hexToColor("#FF7465")),
                              ),
                              const Text(
                                "مجموع خرید",
                                style: TextStyle(
                                    fontSize: 14, fontFamily: 'regular'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: 25, left: 26, right: 26, bottom: 26),
                          width: double.infinity,
                          height: 65,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        hexToColor("#FF7465")),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ))),
                            onPressed: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ResultPay()));
                            },
                            child: Text(
                              'پرداخت',
                              style: TextStyle(
                                  fontSize: 18, fontFamily: 'regular'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
            ],
          ),
        ));
  }

  Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
