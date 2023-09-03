import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app1/cart.dart';
import 'package:restaurant_app1/favourite.dart';
import 'package:restaurant_app1/gmail.dart';
import 'package:restaurant_app1/main_cart.dart';
import 'package:restaurant_app1/notification.dart';
import 'package:restaurant_app1/profile.dart';

class HomeNavbar extends StatelessWidget {
  const HomeNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
        color: Color(0XFF32227),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 8
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.mail,
            color: Colors.white,
              size: 35,
            ),
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>gmail()));
            },
          ),
          IconButton(
            icon: Icon(Icons.favorite_outlined,
              color: Colors.white,
              size: 35,
            ),
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>favourite()));
            },
          ),
          Container(
             padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color(0XFFEFB322),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    color: Colors.white.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 6
                )
              ]
            ),
            child:

            IconButton(
              icon: Icon(
                CupertinoIcons.cart_fill,
                color: Colors.white,
                size: 30,
              ),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>maincart()));
              },
            ),
          ),
          IconButton(
            icon: Icon(Icons.notifications,
              color: Colors.white,
              size: 35,
            ),
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>notification()));
            },
          ),
          IconButton(
            icon: Icon(Icons.person,
            color: Colors.white,
            size: 35,
          ),
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>profile()));
          },),
        ],
      ),
    );
  }
}
