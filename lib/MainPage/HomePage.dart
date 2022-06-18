import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa_pemo/CartPage.dart/CartPage.dart';
import 'package:pa_pemo/Controller/HomePageController.dart';
import 'package:pa_pemo/DetailPage/DetailPage.dart';
import 'package:pa_pemo/Model/models.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

DateTime now = DateTime.now();
final Waktu = DateTime.parse(now.toString());
final pagecontrol = PageController();

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget hotdeals(String name, String gambar, String harga, Color background) {
    return Container(
      margin: EdgeInsets.only(left: 15.0, right: 15),
      width: 150,
      decoration: BoxDecoration(
          color: background, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(gambar)))),
          Text(name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          Text(harga, style: TextStyle(fontSize: 14, color: Colors.white))
        ],
      ),
    );
  }

  Widget featuredFood(Makanan food,Color background,String description,String description1,String description2) {
    return Container(
      height: 150,
      width: 200,
      child: Card(
          elevation: 5,
          margin: EdgeInsets.symmetric(horizontal: 20),
          color: background,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            children: [
              SizedBox(width: 20),
              Container(
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(food.gambar),
                        fit: BoxFit.contain)),
              ),
              SizedBox(width: 50),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(food.nama,
                      style: TextStyle(
                          letterSpacing: 2,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  Text(
                    "Crispy",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text("Flavorful", style: TextStyle(color: Colors.white)),
                  Text("Well Seasoned", style: TextStyle(color: Colors.white)),
                ],
              )
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController SearchController = TextEditingController();
    final page = Get.put(HomePageController());

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Waktu.hour >= 5 && Waktu.hour < 11
                        ? "Selamat Pagi"
                        : Waktu.hour >= 11 && Waktu.hour < 15
                            ? "Selamat Siang"
                            : Waktu.hour >= 15 && Waktu.hour < 19
                                ? "Selamat Sore"
                                : "Selamat Malam",
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                  const Text(
                    "Ingin makan apa hari ini?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ]),
            GestureDetector(
              onTap: () {
                Get.to(CartPage());
              },
              child: Icon(Icons.shopping_cart_outlined,
                  color: Colors.deepOrange, size: 30),
            )
          ]),
        ),
        const SizedBox(height: 30),
        Container(
          height: 150,
          child: PageView(controller: pagecontrol, children: [
            InkWell(
                onTap: () {
                  Get.to(DetailPage(makanan: page.food[0]));
                },
                child: featuredFood(page.food[0],Colors.amber,"Crispy","Flavorful","Well Seasoned")),
            InkWell(
                onTap: () {
                  Get.to(DetailPage(makanan: page.food[1]));
                },
                child: featuredFood(page.food[1],Colors.red.shade200,"Crispy","Flavorful","Well Seasoned")),
            InkWell(
                onTap: () {
                  Get.to(DetailPage(makanan: page.food[2]));
                },
                child: featuredFood(page.food[2],Colors.blue.shade200,"Crispy","Flavorful","Well Seasoned")),
          ]),
        ),
        const SizedBox(height: 30),
        Center(
            child: SmoothPageIndicator(
                controller: pagecontrol,
                count: 3,
                effect: const ExpandingDotsEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    activeDotColor: Color(0xFFFFFFB72B),
                    spacing: 15))),
        const Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text("HOT Deals",
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
        ),
        const SizedBox(height: 30),
        Container(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
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
              InkWell(
                  onTap: () {
                    Get.to(DetailPage(makanan: page.food[4]));
                  },
                  child: hotdeals("Fries", "assets/Fries.png", "24000",
                      Colors.yellow.shade200)),
            ],
          ),
        )
      ],
    );
  }
}
