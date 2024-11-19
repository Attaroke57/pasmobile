import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasmobile/widget/my_button.dart';
import 'package:pasmobile/widget/my_text.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
   
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 45,
        ),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.center,
              child: ClipOval(
                child: Image.network(
                  'https://i.pinimg.com/736x/7e/87/c2/7e87c283fad7134ed9c4c6a217c02744.jpg',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Align(
              alignment: Alignment.center,
              child: MyText(
                hintText: 'Hi Attar',
                fontSize: 22,
                fontWeight: FontWeight.bold,
                colors: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            const Align(
              alignment: Alignment.center,
              child: MyText(
                hintText: 'AttarHoreg@gmail.com',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                colors: Color.fromARGB(255, 123, 119, 119),
              ),
            ),
            const SizedBox(height: 20),
            MyButton(
              text: 'Exit',
              onPressed: () {
                Get.offAllNamed('/login'); // Arahkan ke halaman login
              },
              fontSize: 16,
              fontWeight: FontWeight.bold,
              buttonColor: const Color.fromARGB(255, 201, 181, 4),
              textColor: Colors.black,
              padding: const EdgeInsets.symmetric(vertical: 15),
              borderRadius: BorderRadius.circular(12),
            ),
          ],
        ),
      ),
    );
  }
}
