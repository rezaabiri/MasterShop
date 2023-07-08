import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:MasterShop/main/StartPage.dart';
import 'package:MasterShop/login_page/RegisterPage.dart';
import 'package:MasterShop/login_page/forget_password/StepOnePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            child: Container(
              margin: const EdgeInsets.only(top: 60, right: 20, left: 20),
              child: Column(
                children: [
                  SvgPicture.asset("assets/images/logo.svg", width: 120, height: 120,),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: const Text("به مستر شاپ خوش آمدید", style: TextStyle(fontSize: 18, fontFamily: 'bold'),),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: hexToColor("#FF7465"), textStyle: const TextStyle(fontSize: 20)
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => const RegisterPage()),
                            );
                          },
                          child: Text('ثبت نام کنید', style: TextStyle(fontSize: 14, fontFamily: 'regular', color: hexToColor("#FF7465")),),
                        ),
                        const Text("حساب ندارید؟", style: TextStyle(fontFamily: 'regular')),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 10),
                                child: const Text(": ایمیل", style: TextStyle(fontSize: 14, fontFamily: 'regular')))),
                        TextFormField(
                          controller: _emailController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'ایمیل را وارد کنید';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xf001833),
                            hintText: "sample@gmail.com",
                            errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 1, style: BorderStyle.solid), borderRadius: BorderRadius.all(Radius.circular(20))),
                            errorStyle: TextStyle(fontSize: 14, fontFamily: 'regular' ),
                            hintStyle: TextStyle(fontFamily: 'regular', fontSize: 14),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide.none
                            ),

                          ),
                        ),

                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              margin: const EdgeInsets.only(top: 18, bottom: 10),
                              child: const Text(": رمز عبور", style: TextStyle(fontSize: 14, fontFamily: 'regular'),))),
                      TextFormField(
                        textAlign: TextAlign.right,
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
                          hintText: "رمز عبور را وارد کنید",
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

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    foregroundColor: hexToColor("#FF7465"), textStyle: const TextStyle(fontSize: 20)
                                ),
                                onPressed: () {
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StepOnePage()));
                                },
                                child: Text('رمز عبور را فراموش کردم', style: TextStyle(fontSize: 14, fontFamily: 'regular', color: hexToColor("#FF7465")),),
                              ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("ذخیره اطلاعات", style: TextStyle(fontSize: 14, fontFamily: 'regular', color: hexToColor("#757575")),),
                              Checkbox(
                                checkColor: Colors.white,
                                value: isChecked,
                                fillColor: MaterialStateProperty.all<Color>(hexToColor("#FF7465")),
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                    side: BorderSide.none

                                ),
                                onChanged: (bool? value){
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              )
                            ],
                          ),
                        ],
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
                          child: const Text('ورود', style: TextStyle(fontSize: 18, fontFamily: 'regular'),),
                        ),
                      ),

                    ],
                  )

                ],

              ),
            ),
          )
        ),
      ),
    );
  }
  // Hex to Color
  Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
