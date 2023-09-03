import 'package:flutter/material.dart';

class maincart extends StatefulWidget {
  const maincart({Key? key}) : super(key: key);

  @override
  State<maincart> createState() => _maincartState();
}

class _maincartState extends State<maincart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
title: Text("main cart"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Order List",style: TextStyle(
                      fontSize: 30,fontWeight: FontWeight.bold
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      children: [
                        Container(
                          width: 380,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [BoxShadow(
                              spreadRadius: 3,
                              blurRadius: 10,
                              offset: Offset(0,3),
                              color: Colors.grey.withOpacity(0.5)
                            )
                            ]
                          ),

                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Image.asset("asessts/3.png",
                                height: 100,
                              width: 150,),
                            ),
                            Container(
                              width: 190,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text("Hot Pizza",style:TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                  ) ,),
                                  Text("Taste our hot pizza",style:TextStyle(
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold
                                  ) ,),
                                  Text("\$10",style:TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    color: Colors.red
                                  ) ,)
                                ],
                              ),
                            )
                          ],
                        ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: 380,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: Offset(0,3),
                                  color: Colors.grey.withOpacity(0.5)
                              )
                              ]
                          ),

                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Image.asset("asessts/10.png",
                                  height: 100,
                                  width: 150,),
                              ),
                              Container(
                                width: 190,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Hot Pizza",style:TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ) ,),
                                    Text("Taste our hot pizza",style:TextStyle(
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold
                                    ) ,),
                                    Text("\$10",style:TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red
                                    ) ,)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: 380,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: Offset(0,3),
                                  color: Colors.grey.withOpacity(0.5)
                              )
                              ]
                          ),

                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Image.asset("asessts/5.png",
                                  height: 100,
                                  width: 150,),
                              ),
                              Container(
                                width: 190,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Hot Pizza",style:TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ) ,),
                                    Text("Taste our hot pizza",style:TextStyle(
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold
                                    ) ,),
                                    Text("\$10",style:TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red
                                    ) ,)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            
          )
        ],
      ),
    );
  }
}
