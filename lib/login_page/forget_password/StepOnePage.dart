import 'package:flutter/material.dart';
import 'package:MasterShop/login_page/LoginPage.dart';
import 'package:MasterShop/login_page/forget_password/StepTwoPage.dart';

import '../../main/StartPage.dart';

class StepOnePage extends StatefulWidget {
  const StepOnePage({Key? key}) : super(key: key);

  @override
  State<StepOnePage> createState() => _StepOnePageState();
}

class _StepOnePageState extends State<StepOnePage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:() async {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
        return false;
      },
      child: Scaffold(
        body: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.only(top: 40, right: 16),
                child: IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => StartPage()));
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
                        const Text("ایمیل خود را وارد کنید", style: TextStyle(fontSize: 24, fontFamily: 'bold'),),
                        Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: const Text("کد ارسال شده به ایمیل خود را وارد کنید", style: TextStyle(fontSize: 18, fontFamily: 'regular', color: Colors.grey),)),

                        Column(
                          children: [
                            Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    margin: const EdgeInsets.only(top: 18, bottom: 10),
                                    child: const Text(": ایمیل", style: TextStyle(fontSize: 14, fontFamily: 'regular'),))),
                            TextFormField(
                              textAlign: TextAlign.center,
                              controller: _emailController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'ایمیل خود را وارد کنید';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                filled: true,
                                hintText: "ایمیل را وارد کنید",
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
                                      MaterialPageRoute(builder: (context) => StepTwoPage()),
                                    );
                                  }

                                },
                                child: const Text('مرحله بعد', style: TextStyle(fontSize: 18, fontFamily: 'regular'),),
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
      ),
    );
  }

  Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
