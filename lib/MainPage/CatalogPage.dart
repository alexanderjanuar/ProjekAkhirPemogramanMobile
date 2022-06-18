import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/HomePageController.dart';
import '../DetailPage/DetailPage.dart';

class CatalogPage extends StatelessWidget {
  CatalogPage({Key? key}) : super(key: key);

  Widget hotdeals(String name, String gambar, String harga, Color background) {
    return Container(
      width: 150,
      height: 170,
      child: Card(
        elevation: 5,
        color: background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(gambar)))),
            Text(name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white)),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }

  final page = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Text("Aneka makanan menarik",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Makan enak & hemat",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
                onTap: () {
                  Get.to(DetailPage(makanan: page.food[2]));
                },
                child: hotdeals("Hotdog", "assets/Hotdog.png", "20000",
                    Colors.blue.shade200)),
            InkWell(
                onTap: () {
                  Get.to(DetailPage(makanan: page.food[3]));
                },
                child: hotdeals(
                    "Taco", "assets/Taco.png", "23000", Colors.red.shade200)),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
                onTap: () {
                  Get.to(DetailPage(makanan: page.food[2]));
                },
                child: hotdeals("Hotdog", "assets/Hotdog.png", "20000",
                    Colors.blue.shade200)),
            InkWell(
                onTap: () {
                  Get.to(DetailPage(makanan: page.food[3]));
                },
                child: hotdeals(
                    "Taco", "assets/Taco.png", "23000", Colors.red.shade200)),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
                onTap: () {
                  Get.to(DetailPage(makanan: page.food[2]));
                },
                child: hotdeals("Hotdog", "assets/Hotdog.png", "20000",
                    Colors.blue.shade200)),
            InkWell(
                onTap: () {
                  Get.to(DetailPage(makanan: page.food[3]));
                },
                child: hotdeals(
                    "Taco", "assets/Taco.png", "23000", Colors.red.shade200)),
          ],
        )
      ],
    );
  }
}
