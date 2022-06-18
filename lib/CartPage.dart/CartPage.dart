import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  Widget CatalogList(String judul, String gambar) {
    return Container(
      margin: const EdgeInsets.only(left: 25, right: 25, top: 20),
      height: 100,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 4,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ], borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Image.asset(gambar),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                judul,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Rp.25.000",
                    style: const TextStyle(fontSize: 18, color: Colors.yellow),
                  ),
                  SizedBox(width: 20),
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.white70,
                    child: IconButton(
                        color: Colors.black,
                        padding: const EdgeInsets.all(5),
                        iconSize: 12,
                        icon: const Icon(Icons.add_outlined),
                        onPressed: () {
                          // do something
                        }),
                  ),
                  SizedBox(width: 10),
                  Text("1"),
                  SizedBox(width: 10),
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.white70,
                    child: IconButton(
                        color: Colors.black,
                        padding: const EdgeInsets.all(5),
                        iconSize: 12,
                        icon: const Icon(Icons.remove),
                        onPressed: () {
                          // do something
                        }),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.deepOrange,
        title: Text(
          "Keranjang Belanja",
          style: TextStyle(color: Colors.white70),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(top: 20, left: 20),
              width: 50,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Icon(Icons.arrow_back_ios_new_outlined,
                    color: Colors.black, size: 12),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  primary: Colors.white, // <-- Button color
                  onPrimary: Colors.black, // <-- Splash color
                ),
              ),
            ),
          ),
          ListView(
            children: [
              InkWell(child: CatalogList("Beef Burger", "assets/Burger.png")),
              InkWell(child: CatalogList("Beef Burger", "assets/Burger.png")),
              InkWell(child: CatalogList("Beef Burger", "assets/Burger.png")),
              InkWell(child: CatalogList("Beef Burger", "assets/Burger.png")),
              InkWell(child: CatalogList("Beef Burger", "assets/Burger.png")),
              SizedBox(height: 100)
            ],
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.05,
            minChildSize: 0.05,
            maxChildSize: 0.5,
            builder: (BuildContext context, ScrollController s) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)]),
                child: ListView(controller: s, children: [
                  Center(
                    child: Container(
                      height: 8,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Pembayaran",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("SUBTOTAL",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          Text("Rp. 50000",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("TAX & FEE",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          Text("Rp. 4000",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("TOTAL",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          Text("Rp. 54000",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: Colors.amber,
                            elevation: 5.0,
                          ),
                          onPressed: () {},
                          child: Text("CHECKOUT"),
                        ),
                      ),
                    ],
                  ),
                ]),
              );
            },
          ),
         
        ],
      ),
    );
  }
}
