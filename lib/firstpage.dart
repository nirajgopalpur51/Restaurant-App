import 'package:flutter/material.dart';
import 'package:restaurant_app1/Cheese/cheese_items.dart';
import 'package:restaurant_app1/Pizza/pizza_itema.dart';
import 'package:restaurant_app1/widget/home_nav_bar.dart';
import 'package:restaurant_app1/Burger/items_widget.dart';
import 'Pasta/pasta_items.dart';
import 'cart.dart';

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);
  @override
  State<firstpage> createState() => _firstpageState();
}
class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, //  4 tabs on example
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.sort_rounded,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    appbar(context)
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Hot and Fast food",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  "Delivers on time",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TabBar(
                isScrollable: true,
                labelStyle: TextStyle(fontSize: 20),
                labelPadding: EdgeInsets.symmetric(horizontal: 20),
                tabs: [
                  Tab(
                    text: "Burger",
                  ),
                  Tab(
                    text: "Pizza",
                  ),
                  Tab(
                    text: "Cheese",
                  ),
                  Tab(
                    text: "Pasta",
                  ),
                  // Tab(text: "Coffee",),
                ],
              ),
              Flexible(
                flex: 2,
                child: TabBarView(
                  children: [
                    ItemWidget(),
                    pizzaItems(),
                    cheeseItems(),
                    pastaItems(),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: HomeNavbar(),
      ),
    );
  }
}
