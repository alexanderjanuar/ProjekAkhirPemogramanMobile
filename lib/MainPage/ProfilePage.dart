import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            Container(height: 350),
            Container(
              height: 280,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFFFF2994A), Color(0xFFFFF2C94C)]),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 60,
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage('assets/FrontLogo.png'),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("Alexander Januar",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white)),
                    SizedBox(height: 50),
                  ]),
            ),
            
          ],
        ),
      ],
    );
  }
}