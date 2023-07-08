import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastClass extends StatelessWidget {
  const ToastClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  void showToastMessage(String message){
    Fluttertoast.showToast(
        msg: message, //message to show toast
        toastLength: Toast.LENGTH_SHORT, //duration for message to show
        gravity: ToastGravity.BOTTOM, //where you want to show, top, bottom
        timeInSecForIosWeb: 1, //for iOS only
        backgroundColor: Colors.white, //background Color for message
        textColor: Colors.black, //message text color
        fontSize: 16.0 //message font size
    );
  }

}
