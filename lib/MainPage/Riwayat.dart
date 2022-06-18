import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RiwayatPage extends StatelessWidget {
  const RiwayatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Text("Riwayat Pemesanan",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
              height: 170,
              width: 200,
              color: Colors.white70,
              child: Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Hotdog, Fries",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Row(
                        children: const [
                          Text(
                            "06 Jun 2022, 15 : 21",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12 + 1,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.brightness_1_rounded,
                            size: 10,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Selesai",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.green,
                              fontSize: 12 + 1,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      SizedBox(height: 10),
                      Text("35.000",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              )),
        )
      ],
    );
  }
}
