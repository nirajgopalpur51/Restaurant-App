import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app1/main_cart.dart';

Widget appbar(BuildContext context){
  return IconButton(
    onPressed: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context)=> maincart()));
    },
    icon: Icon(
      CupertinoIcons.cart_fill,
      color: Colors.white,
      size: 32,
    ),
  );
}