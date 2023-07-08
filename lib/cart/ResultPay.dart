import 'package:flutter/material.dart';
import 'package:MasterShop/main_shop_section/MainShopSection.dart';

import '../main/StartPage.dart';

class ResultPay extends StatelessWidget {
  const ResultPay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only( right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StartPage()));
                  }, icon: const Icon(Icons.arrow_back_ios_new_outlined, size: 20,)),
                  const Text("اطلاعات پرداخت", style: TextStyle(fontSize: 18, fontFamily: 'bold'),),
                  const Icon(Icons.more_horiz_rounded),

                ],
              ),
            ),

            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.only(left: 16, right: 16),

                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.check_circle, weight: 100, color: Colors.green, size: 150,),
                        Container(
                            margin: const EdgeInsets.only(top: 40),
                            child: const Text("پرداخت شما با موفقیت انجام شد",
                              style: TextStyle(fontSize: 40, fontFamily: 'extra'),textAlign: TextAlign.center,)
                        ),
                        Container(
                            margin: const EdgeInsets.only(top: 30),
                            child: const Text("کالای شما درحال پردازش است و به زودی آماده ارسال میشود",
                              style: TextStyle(fontSize: 20, fontFamily: 'regular'),textAlign: TextAlign.center,)
                        ),

                        Container(
                          margin: const EdgeInsets.only(top: 50),
                          width: double.infinity,
                          height: 65,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(hexToColor("#FF7465")),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    )
                                )
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainShopSection()),);

                            },
                            child: const Text('بازگشت به صفحه اصلی', style: TextStyle(fontSize: 18, fontFamily: 'regular'),),
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
