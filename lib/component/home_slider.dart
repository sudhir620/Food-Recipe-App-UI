import 'package:flutter/material.dart';

import 'custom_button.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: SizedBox(
        width: double.infinity,
        height: 200,
        child: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                  fit: BoxFit.cover, "assets/images/slider_img.png"),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0.65),
                    Colors.black.withOpacity(0.45),
                    Colors.transparent
                  ])),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "New recipe",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "When you order \$20+",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  const Text("Automatically applied",
                      style: TextStyle(fontSize: 16, color: Colors.white)),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    text: "Order now",
                    textSize: 14,
                    width: 100,
                    height: 35,
                    onTap: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
