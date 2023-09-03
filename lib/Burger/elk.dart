import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app1/single_item_nav_bar.dart';

import '../cart.dart';

class elk extends StatefulWidget {
  const elk({Key? key}) : super(key: key);

  @override
  State<elk> createState() => _elkState();
}

class _elkState extends State<elk> {
  int i=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF232227),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 5, left: 10, bottom: 15,right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                  appbar(context)
                ],
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Image.asset(
                  "asessts/3.png",
                  height: MediaQuery.of(context).size.height / 2,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Fresh Burger",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap :(){
                                setState(() {

                                });
                                i--;
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Icon(
                                  CupertinoIcons.minus,
                                  color: Colors.black,
                                  size: 20,
                                ),
                              ),
                            ),
                            SizedBox(width: 8,),
                            Text("$i",style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,

                            ),),
                            SizedBox(width: 8,),
                            InkWell(
                              onTap: (){
                                setState(() {

                                });
                                i++;
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Icon(
                                  CupertinoIcons.plus,
                                  color: Colors.black,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("We bring you the Burger with onion,cold drink and fries"
                      " We bring you the burger with cheese served with onion,cold drink and fries and "
                    ,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),

      bottomNavigationBar: SingleItenNavBar(),
    );
  }
}
