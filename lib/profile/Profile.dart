import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../main/StartPage.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 40),
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only( right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StartPage()));
                    }, icon: const Icon(Icons.arrow_back_ios_new_outlined)),
                    const Text("پروفایل", style: TextStyle(fontSize: 18, fontFamily: 'bold'),),
                    const Icon(Icons.more_horiz_rounded),

                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SvgPicture.asset("assets/images/logo.svg", width: 200, height: 200,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: const Text("فروشگاه مستر شاپ", style: TextStyle(fontSize: 34, fontFamily: 'extra'),),
              ),

              Container(
                margin: const EdgeInsets.only(top: 20),
                width: 300,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black38, width: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(10),),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(right: 6),
                            child: const Text("رضا عبیری", style: TextStyle(fontSize: 18, fontFamily: 'regular'),)),
                        const Icon(Icons.person, size: 20,),

                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              margin: const EdgeInsets.only(right: 6),
                              child: const Text("pr.rezaabiri@gmail.com", style: TextStyle(fontSize: 18, fontFamily: 'regular'),)),
                          const Icon(Icons.email_outlined, size: 20,),


                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              margin: const EdgeInsets.only(right: 6),
                              child: const Text("09150000000", style: TextStyle(fontSize: 18, fontFamily: 'regular'),)),
                          const Icon(Icons.phone_android, size: 20,),


                        ],
                      ),
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
