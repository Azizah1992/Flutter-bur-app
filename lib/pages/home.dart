// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:myapp/routes/routes.dart';

import '../controller/menu_controller.dart';
import '../utils/data.dart';

class Home extends StatelessWidget {
  Home({super.key});

  List<String> navBarItem = [
    "Food",
    "Food",
    "Pizza",
    "Pizza",
    "vaigen",
  ];
  final menuController = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 83, 76, 79),
        flexibleSpace: SafeArea(
          child: Row(
            children: [
              SizedBox(width: 20),
              InkWell(
                onTap: () {},
                child:
                    Image.asset('assets/images/avatar.png', fit: BoxFit.fill),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Your Name",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 130,
              ),
              Image.asset(
                'assets/images/Group 12.png',
                height: 36,
                width: 90,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 83, 76, 79),
      body: Column(
        children: [
          // Center(
          //   child: Text('Home'),
          // ),
          Container(
            width: 299,
            height: 26,
            decoration: BoxDecoration(
              color: Color.fromARGB(155, 137, 137, 137),
              border: Border.all(
                color: Color.fromARGB(255, 244, 234, 234).withOpacity(0.5),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(17.0),
            ),
            margin: EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 320, bottom: 2),
                    child: Container(
                      width: 70,
                      height: 20,
                      child: Icon(
                        Icons.shopping_cart_checkout_outlined,
                        color: Colors.grey,
                        size: 25,
                      ),
                    ),
                  ),
                ),
                new Expanded(
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search by Name",
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                      isDense: true,
                    ),
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromARGB(255, 243, 235, 235),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 40,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: navBarItem.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    navBarItem[index],
                    style: TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'Menu Favorite',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Container(
                        child: Text(
                          'Sort',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.sort,
                        color: Colors.white,
                        size: 20,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: menuItem.length,
                itemBuilder: (context, index) {
                  return buildItem(
                      name: menuItem[index].name,
                      price: menuItem[index].price,
                      image: menuItem[index].ImageUrl);
                }),
          ),
        ],
      ),
    );
  }
}

Widget buildItem({
  required String name,
  required String price,
  required String image,
}) {
  return Stack(children: [
    Padding(
      padding: const EdgeInsets.only(left: 110, top: 28),
      child: Container(
        height: 184,
        width: 253,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Color.fromARGB(255, 175, 148, 68),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Text(
                  '$name',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 37,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 160),
                child: Text(
                  'BIG',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 39,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 140, top: 10),
                child: Text(
                  '$price.SR',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    Positioned(
      left: 5,
      child: Image.asset(
        '$image',
        width: 240,
        fit: BoxFit.contain,
      ),
    ),
    Positioned(
      right: 5,
      top: 190,
      child: Image.asset(
        'assets/images/circle.png',
        width: 44,
        fit: BoxFit.contain,
      ),
    ),
    GetBuilder<MenuController>(builder: (menuController) {
      return Positioned(
        left: 324,
        top: 199,
        child: InkWell(
          onTap: () {
            // add fav function
            menuController.addFave(name);
            print('this is fav list ${menuController.favItems}');
          },
          child: Image.asset(
            'assets/images/heart.png',
            width: 26,
            fit: BoxFit.contain,
          ),
        ),
      );
    })
  ]);
}
