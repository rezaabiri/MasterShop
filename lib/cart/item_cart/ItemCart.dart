import 'package:flutter/material.dart';

import '../Cart.dart';

class ItemCart extends StatefulWidget {
  final Function(String) onCheckboxClicked; // تابع Callback

  const ItemCart({Key? key, required this.onCheckboxClicked}) : super(key: key);

  @override
  State<ItemCart> createState() => _ItemCartState();
}

class _ItemCartState extends State<ItemCart> {
  bool isChecked = false;
  bool isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.remove), iconSize: 25,),
                    Text("1", style: TextStyle(fontSize: 18, fontFamily: 'bold'),),
                    IconButton(onPressed: (){}, icon: Icon(Icons.add), iconSize: 25,),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Text("بافت پشمی", style: TextStyle(fontSize: 14, fontFamily: 'bold'),),
                      Text("بافت پشمی", style: TextStyle(fontSize: 12, fontFamily: 'regular'),),
                      Text("850,000", style: TextStyle(fontSize: 18, fontFamily: 'bold', color: hexToColor("#FF7465")),),
                    ],
                  ),
                ),

                ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Image.asset("assets/images/item_one.png", width: 90, height: 90,fit: BoxFit.cover)
                ),
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
                      if (isChecked2) {
                        widget.onCheckboxClicked("1,100,000");

                      }else if(isChecked) {
                        widget.onCheckboxClicked("850000");

                      }else {
                        widget.onCheckboxClicked("0");

                      }

                    });
                  },
                ),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.remove), iconSize: 25,),
                    Text("1", style: TextStyle(fontSize: 18, fontFamily: 'bold'),),
                    IconButton(onPressed: (){}, icon: Icon(Icons.add), iconSize: 25,),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Text("بافت پشمی", style: TextStyle(fontSize: 14, fontFamily: 'bold'),),
                      Text("بافت پشمی", style: TextStyle(fontSize: 12, fontFamily: 'regular'),),
                      Text("250,000", style: TextStyle(fontSize: 18, fontFamily: 'bold', color: hexToColor("#FF7465")),),
                    ],
                  ),
                ),

                ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Image.asset("assets/images/item_two.png", width: 90, height: 90,fit: BoxFit.cover)
                ),
                Checkbox(
                  checkColor: Colors.white,
                  value: isChecked2,
                  fillColor: MaterialStateProperty.all<Color>(hexToColor("#FF7465")),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      side: BorderSide.none

                  ),
                  onChanged: (bool? value){
                    setState(() {
                      isChecked2 = value!;
                      if (isChecked) {
                        widget.onCheckboxClicked("1,100,000");

                      }else if(isChecked2) {
                        widget.onCheckboxClicked("250000");

                      }else {
                        widget.onCheckboxClicked("0");

                      }
                    });
                  },
                ),

              ],
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
