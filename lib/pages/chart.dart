// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/pages/home.dart';

import '../routes/routes.dart';

class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 83, 76, 79),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 60,
                  width: 140,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 3, top: 20, right: 60),
                    child: IconButton(
                      color: Colors.white,
                      iconSize: 30,
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Get.toNamed(AppPage.home);
                      },
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 140, top: 20),
                    child: IconButton(
                      color: Colors.red,
                      iconSize: 30,
                      icon: Icon(Icons.favorite),
                      onPressed: () {
                        Get.toNamed(AppPage.note);
                      },
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 20),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 2, top: 16, bottom: 3),
                      child: Image.asset(
                        width: 30,
                        'assets/images/shop.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 1, top: 10),
                      child: Image.asset(
                        width: 28,
                        'assets/images/Vector.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // SizedBox(
            //   height: 1,
            // ),
            Stack(
              children: [
                Container(
                  height: 350,
                  width: 700,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60, bottom: 70),
                    child: Image.asset(
                        // width: 335,
                        'assets/images/burger.png',
                        width: 100,
                        height: 130,
                        fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 270, left: 110),
                  child: Container(
                    child: Image.asset(
                      width: 250,
                      'assets/images/cc.png',
                      height: 60,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 310, right: 10),
                  child: Text(
                    'TOPING',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            // Container(),

            Row(
              children: [
                Container(
                  child: Expanded(
                    child: Stack(children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 30,
                          top: 2,
                        ),
                        child: Container(
                          height: 98,
                          width: 92,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Color.fromARGB(84, 59, 59, 55), //card
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 17),
                            child: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 0, left: 10),
                                  child: Image.asset(
                                    'assets/images/burger.png', //image
                                    height: 70,
                                    width: 75,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 1,
                        top: 72,
                        child: Image.asset(
                          'assets/images/circle.png',
                          width: 24,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                        right: 6,
                        left: 83,
                        top: 72,
                        child: Icon(
                          Icons.add,
                          color: Colors.white, //add icon
                          size: 20,
                        ),
                      ),
                    ]),
                  ),
                ),
                Container(
                  child: Expanded(
                    child: Stack(children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 2,
                          top: 2,
                        ),
                        child: Container(
                          height: 92,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Color.fromARGB(84, 59, 59, 55), //card
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 17),
                            child: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 0, left: 10),
                                  child: Image.asset(
                                    'assets/images/burger.png', //image
                                    height: 70,
                                    width: 75,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 15,
                        top: 72,
                        child: Image.asset(
                          'assets/images/circle.png',
                          width: 24,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                        right: 6,
                        left: 60,
                        top: 72,
                        child: Icon(
                          Icons.add,
                          color: Colors.white, //add icon
                          size: 20,
                        ),
                      ),
                    ]),
                  ),
                ),
                Container(
                  child: Expanded(
                    child: Stack(children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 2,
                          top: 2,
                        ),
                        child: Container(
                          height: 92,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Color.fromARGB(84, 59, 59, 55), //card
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 17),
                            child: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 0, left: 10),
                                  child: Image.asset(
                                    'assets/images/burger.png', //image
                                    height: 70,
                                    width: 75,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 18,
                        top: 72,
                        child: Image.asset(
                          'assets/images/circle.png',
                          width: 24,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                        right: 4,
                        left: 52,
                        top: 72,
                        child: Icon(
                          Icons.add,
                          color: Colors.white, //add icon
                          size: 20,
                        ),
                      ),
                    ]),
                  ),
                ),
                Container(
                  child: Expanded(
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 2,
                            top: 2,
                          ),
                          child: Container(
                            height: 92,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Color.fromARGB(84, 59, 59, 55), //card
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 17),
                              child: Column(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 0, left: 10),
                                    child: Image.asset(
                                      'assets/images/burger.png', //image
                                      height: 70,
                                      width: 75,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 15,
                          top: 70,
                          child: Image.asset(
                            'assets/images/circle.png',
                            width: 24,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Positioned(
                          right: 6,
                          left: 60,
                          top: 72,
                          child: Icon(
                            Icons.add,
                            color: Colors.white, //add icon
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          'hello',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '40 SR ',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 50,
                    ),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          'hello',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '40 SR ',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 60,
                    ),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          'hello',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '40 SR ',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 70,
                    ),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          'hello',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '40 SR ',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  right: 160,
                ),
                child: Column(
                  children: [
                    Text(
                      'BURGER',
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 110, left: 30),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'BIG',
                            style: TextStyle(
                                fontSize: 33,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Expanded(
                              child: Text(
                                '25 SR',
                                style:
                                    TextStyle(fontSize: 16, color: Colors.red),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
