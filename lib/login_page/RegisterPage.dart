import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:MasterShop/main/StartPage.dart';
import 'package:MasterShop/login_page/LoginPage.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isChecked = false;

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SvgPicture.asset("assets/images/logo.svg", width: 150, height: 150,),
                  const Text("به کیان شاپ خوش آمدید", style: TextStyle(fontSize: 18, fontFamily: 'bold'),),
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
                              MaterialPageRoute(builder: (context) => const LoginPage()),
                            );
                          },
                          child: Text('وارد شوید', style: TextStyle(fontSize: 14, fontFamily: 'regular', color: hexToColor("#FF7465")),),
                        ),
                        const Text("حساب دارید؟", style: TextStyle(fontFamily: 'regular')),
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
                                child: const Text(": نام کاربری", style: TextStyle(fontSize: 14, fontFamily: 'regular')))),
                        TextFormField(
                          controller: _userNameController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'نام کاربری را وارد کنید';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xf001833),
                            hintText: "username",
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
                  Container(
                    margin: EdgeInsets.only(top: 18),
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

                      Container(
                        margin: const EdgeInsets.only(top: 50, bottom: 30),
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
                                Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) => StartPage()));
                              }
                          },
                          child: const Text('ثبت نام', style: TextStyle(fontSize: 18, fontFamily: 'regular'),),
                        ),
                      ),

                    ],
                  ),

                ],

              ),
            ),
          )
        ),
      ),
    );
  }
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Colors.grey[300],
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  );
  // Hex to Color
  Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
