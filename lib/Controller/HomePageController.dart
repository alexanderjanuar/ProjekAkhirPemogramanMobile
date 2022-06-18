import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa_pemo/Model/models.dart';

class HomePageController extends GetxController {
  var selectedIndex = 0.obs;

  void setIndex(Index) {
    selectedIndex.value = Index;
  }

  int GetIndex() {
    return selectedIndex.value;
  }

  var food = <Makanan>[
    Makanan("Fried Chicken", 25000, "4.6", "assets/Fried Chicken.png", "230","Ayam yang enak dan renyah"),
    Makanan("Beef Burger", 30000, "4.8", "assets/Burger.png", "230","A dish containing patty of grounded beef or sometimes another savory ingredient"),
    Makanan("Hot Dog", 25000, "4.4", "assets/Hotdog.png", "189","Food consisting of a grilled or steamed sausage served in the slit of a partially sliced bun. The term hot dog can also refer to the sausage itself."),
    Makanan("Taco", 23000, "4.7", "assets/Taco.png", "190","Food consisting of a grilled or steamed sausage served in the slit of a partially sliced bun. The term hot dog can also refer to the sausage itself."),
    Makanan("Fries", 24000, "4.8", "assets/Fries.png", "189","Food consisting of a grilled or steamed sausage served in the slit of a partially sliced bun. The term hot dog can also refer to the sausage itself."),
  ];
}
