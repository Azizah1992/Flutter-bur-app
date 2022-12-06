import 'package:flutter/material.dart';

class ItemsData {
  final String name, ImageUrl, price;

  ItemsData({
    required this.name,
    required this.ImageUrl,
    required this.price,
  });
}

 List<ItemsData> menuItem = [
  ItemsData(
    name: 'burger',
    ImageUrl: 'assets/images/burger.png',
    price: '35',
  ),
  ItemsData(
    name: 'burger',
    ImageUrl: 'assets/images/burger2.png',
    price: '35',
  ),
  ItemsData(
    name: 'sha',
    ImageUrl: 'assets/images/burger2.png',
    price: '35',
  ),
];
