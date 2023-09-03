import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app1/Pizza/elk.dart';
import 'package:restaurant_app1/Pizza/meat.dart';
import 'Turkey.dart';
import 'cheese.dart';
class pizzaItems extends StatelessWidget {
  const pizzaItems({Key? key}) : super(key: key);

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
                      MaterialPageRoute(builder: (context) => cheese_pizza()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 0),
                  child: Image.asset("asessts/5.png",
                    width: 120,
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // SizedBox(height: 30,),
              Padding(padding: EdgeInsets.only(bottom: 0),
                child: Container(
                  alignment: Alignment.center,

                  child: Text("Cheese Pizza",
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
                child: Text("Hot Pizza",
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
                      MaterialPageRoute(builder: (context) => turkey_pizza()));
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset("asessts/6.png",
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 0),
                child: Container(
                  alignment: Alignment.center,

                  child: Text("Turkey Pizza",
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
                child: Text("Hot Pizza",
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
                      MaterialPageRoute(builder: (context) => elk_pizza()));
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset("asessts/7.png",
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 0),
                child: Container(
                  alignment: Alignment.center,

                  child: Text("Elk Pizza",
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
                child: Text("Hot Pizza",
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
                      MaterialPageRoute(builder: (context) => meat_pizza()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset("asessts/8.png",
                    width: 120,
                    height: 85,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 0,top: 30),
                child: Container(
                  alignment: Alignment.center,

                  child: Text("Meat Pizza",
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
                child: Text("Hot Pizza",
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
