import 'package:flutter/material.dart';
import 'package:MasterShop/main/StartPage.dart';
import 'package:MasterShop/favorite/ItemFavorite.dart';

class MainFavorite extends StatefulWidget {
  const MainFavorite({Key? key}) : super(key: key);

  @override
  State<MainFavorite> createState() => _MainFavoriteState();
}

class _MainFavoriteState extends State<MainFavorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StartPage()));
                }, icon: const Icon(Icons.arrow_back_ios_new_outlined, size: 20)),
                const Text("علاقه مندی ها", style: TextStyle(fontSize: 18, fontFamily: 'bold'),),
                const Icon(Icons.more_horiz_rounded),

              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 20, left: 16, right: 16),
              child: ItemFavorite()),
        ],
      ),
    );
  }
}
