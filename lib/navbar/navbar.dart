import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:myapp/controller/controller.dart';
import 'package:myapp/pages/chart.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/note.dart';
import 'package:myapp/pages/setting.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final controller = Get.put(NavBartController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBartController>(builder: (context) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: [
            Home(),
            Note(),
            Chart(),
            Setting(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color.fromARGB(255, 194, 67, 25),
          unselectedItemColor: Color.fromARGB(255, 69, 71, 71),
          currentIndex: controller.tabIndex,
          onTap: controller.changeTabIndex,
          items: [
            _bottombarItem(IconlyBold.home, ""),
            _bottombarItem(IconlyBold.heart, ""),
            _bottombarItem(IconlyBold.document, "order"),
            _bottombarItem(IconlyBold.setting, "setting"),
          ],
        ),
      );
    });
  }
}

_bottombarItem(IconData icon, String label) {
  return BottomNavigationBarItem(icon: Icon(icon), label: label);
}
