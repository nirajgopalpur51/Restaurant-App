
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Turkey.dart';
import 'elk.dart';
import 'meat.dart';
import 'single_item_page.dart';
class ItemWidget extends StatefulWidget {
  const ItemWidget({Key? key}) : super(key: key);

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
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
                      MaterialPageRoute(builder: (context) => singleItemPage()));
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset("asessts/1.png",
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 0),
              child:
              Container(
                alignment: Alignment.center,

                child: Text("Cheese Burger",
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
                child: Text("Hot Burger",
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
                      MaterialPageRoute(builder: (context) => turkey()));
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset("asessts/2.png",
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 0),
                child: Container(
                  alignment: Alignment.center,

                  child: Text("Turkey Burger",
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
                child: Text("Hot Burger",
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
                      MaterialPageRoute(builder: (context) => elk()));
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset("asessts/3.png",
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 0),
                child: Container(
                  alignment: Alignment.center,

                  child: Text("Elk Burger",
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
                child: Text("Hot Burger",
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
                      MaterialPageRoute(builder: (context) => meat()));
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset("asessts/4.png",
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 0),
                child: Container(
                  alignment: Alignment.center,

                  child: Text("Meat Burger",
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
                child: Text("Hot Burger",
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
