import 'package:flutter/material.dart';

import '../data/dummy_data.dart';
import '../model/food_model.dart';

class FoodCategory extends StatelessWidget {
  const FoodCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 120,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: foodList.length,
          itemBuilder: (context, index) {
            FoodModel model = foodList[index];
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      model.imageUrl,
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    model.name,
                    style: const TextStyle(fontSize: 14),
                  )
                ],
              ),
            );
          }),
    );
  }
}
