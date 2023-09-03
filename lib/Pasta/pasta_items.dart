import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app1/Cheese/parmesan_cheese.dart';
import 'package:restaurant_app1/Pasta/pasta1.dart';
import 'package:restaurant_app1/Pasta/pasta2.dart';
import 'package:restaurant_app1/Pasta/pasta3.dart';
import 'package:restaurant_app1/Pasta/pasta4.dart';

class pastaItems extends StatelessWidget {
  const pastaItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 0.76,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          margin: EdgeInsets.symmetric(vertical:8,horizontal: 15 ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF232227),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 8
                )
              ]
          ),
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => pasta1()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 0),
                  child: Image.asset("asessts/13.png",
                    width: 130,
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // SizedBox(height: 30,),
              Padding(padding: EdgeInsets.only(bottom: 0),
                child: Container(
                  alignment: Alignment.center,

                  child: Text("Brie Pasta",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Hot Pasta",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$55",style:
                    TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                    ),
                    Icon(CupertinoIcons.cart_badge_plus,
                      size: 27,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
        ),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          margin: EdgeInsets.symmetric(vertical:8,horizontal: 15 ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF232227),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 8
                )
              ]
          ),
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => pasta2()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset("asessts/14.png",
                    width: 190,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // SizedBox(height: 30,),
              Padding(padding: EdgeInsets.only(bottom: 0),
                child: Container(
                  alignment: Alignment.center,
                  child: Text("Turkey Pasta",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Hot Pasta",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$149",style:
                    TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                    ),
                    Icon(CupertinoIcons.cart_badge_plus,
                      size: 27,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
        ),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          margin: EdgeInsets.symmetric(vertical:8,horizontal: 15 ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF232227),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 8
                )
              ]
          ),
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => pasta3()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset("asessts/15.png",
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // SizedBox(height: 25,),
              Padding(padding: EdgeInsets.only(bottom: 0),
                child: Container(
                  alignment: Alignment.center,

                  child: Text("Elk Pasta",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Hot Pasta",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$255",style:
                    TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                    ),
                    Icon(CupertinoIcons.cart_badge_plus,
                      size: 27,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
        ),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          margin: EdgeInsets.symmetric(vertical:8,horizontal: 15 ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF232227),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 8
                )
              ]
          ),
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => pasta4()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Image.asset("asessts/16.png",
                    width: 120,
                    height: 95,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // SizedBox(height: 20,),
              Padding(padding: EdgeInsets.only(bottom: 0,top: 30),
                child: Container(
                  alignment: Alignment.center,

                  child: Text("Meat Pasta",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Hot Pasta",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$155",style:
                    TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                    ),
                    Icon(CupertinoIcons.cart_badge_plus,
                      size: 27,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
        ),

      ],
    );
  }
}
