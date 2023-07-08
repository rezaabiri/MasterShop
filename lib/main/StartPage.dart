import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:MasterShop/category/MainCategory.dart';
import 'package:MasterShop/profile/Profile.dart';

import '../cart/Cart.dart';
import '../favorite/MainFavorite.dart';
import '../login_page/LoginPage.dart';
import '../login_page/RegisterPage.dart';
import '../main_shop_section/MainShopSection.dart';

class StartPage extends StatefulWidget {
  StartPage({Key? key}) : super(key: key);


  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Profile(),
    MainFavorite(),
    MainShopSection(),
    Cart(),
    MainCategory()
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/Profile.svg",),
            activeIcon: SvgPicture.asset("assets/images/Profile.svg", color: Colors.redAccent,),
            label: 'پروفایل',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/Heart.svg",),
            activeIcon: SvgPicture.asset("assets/images/Heart.svg", color: Colors.redAccent,),
            label: 'علاقه مندی ها',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/Home.svg", color: Colors.black12,),
            activeIcon: SvgPicture.asset("assets/images/Home.svg", color: Colors.redAccent,),

            label: 'فروشگاه',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/Buy.svg",),
            activeIcon: SvgPicture.asset("assets/images/Buy.svg", color: Colors.redAccent,),
            label: 'سبد خرید',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/category.svg",),
            activeIcon: SvgPicture.asset("assets/images/category.svg", color: Colors.redAccent,),

            label: 'دسته بندی ها',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
