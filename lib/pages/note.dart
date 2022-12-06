import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/menu_controller.dart';

class Note extends StatefulWidget {
   Note({super.key});

  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {
   final menuController = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 193, 173, 235),
      body: Center(
        child: ListView.builder(
          itemCount: menuController.favItems.length,
          itemBuilder: (context, index){
          return Column(
            children: [
                Text(menuController.favItems[index].name),
            Text(menuController.favItems[index].price),
            Image.asset(menuController.favItems[index].ImageUrl),
            ],
          );
          } )
      ),
    );
  }
}
