import 'package:flutter/material.dart';
import 'package:MasterShop/login_page/forget_password/StepTwoPage.dart';

import '../../main/StartPage.dart';

class StepThreePage extends StatefulWidget {
  const StepThreePage({Key? key}) : super(key: key);


  @override
  State<StepThreePage> createState() => _StepThreePageState();
}

class _StepThreePageState extends State<StepThreePage> {

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: const EdgeInsets.only(top: 40, right: 16),
              child: IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => StepTwoPage()));
                  },
                  icon: const Icon(Icons.arrow_back_ios_new_outlined)),
            ),
          ),

          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Form(
                key: _formKey,
                child: Container(
                  margin: const EdgeInsets.only(right: 16, left: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("رمز عبور جدید را وارد کنید", style: TextStyle(fontSize: 24, fontFamily: 'bold'),),
                      Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: const Text("رمز عبور جدید برای حساب کاربری خود وارد کنید", style: TextStyle(fontSize: 18, fontFamily: 'regular', color: Colors.grey),)),

                      Column(
                        children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  margin: const EdgeInsets.only(top: 18, bottom: 10),
                                  child: const Text(": رمز عبور", style: TextStyle(fontSize: 14, fontFamily: 'regular'),))),
                          TextFormField(
                            textAlign: TextAlign.center,
                            obscureText: true,
                            controller: _passwordController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'رمز عبور را وارد کنید';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              filled: true,
                              hintText: "رمز عبور جدید",
                              errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 1, style: BorderStyle.solid), borderRadius: BorderRadius.all(Radius.circular(20))),
                              errorStyle: TextStyle(fontSize: 14, fontFamily: 'regular' ),
                              hintStyle: TextStyle(fontFamily: 'regular', fontSize: 14),
                              fillColor: Color(0xf001833),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide.none
                              ),

                            ),
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
                                if(_formKey.currentState!.validate()){
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => StartPage()),
                                  );
                                }

                              },
                              child: const Text('تایید', style: TextStyle(fontSize: 18, fontFamily: 'regular'),),
                            ),
                          ),

                        ],
                      )

                    ],
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }

  Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
