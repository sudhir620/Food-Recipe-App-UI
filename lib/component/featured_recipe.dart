import 'package:flutter/material.dart';
import 'package:food_recipes_app/constants/routes.dart';

import '../data/dummy_data.dart';
import '../model/food_model.dart';

class FeaturedRecipe extends StatelessWidget {
  const FeaturedRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: foodList.length,
          itemBuilder: (context, index) {
            FoodModel model = foodList[index];
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, detailScreen);
              },
              child: SizedBox(
                height: 350,
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      children: [
                        Stack(children: [
                          Image.network(
                            model.imageUrl,
                            fit: BoxFit.cover,
                            height: double.infinity,
                            width: double.infinity,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                gradient: RadialGradient(colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.5),
                            ], stops: const [
                              0.1,
                              0.95
                            ])),
                          )
                        ]),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: const EdgeInsets.all(10),
                                  height: 30,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white.withOpacity(0.5)),
                                  child: const Center(
                                      child: Text(
                                    "Breakfast",
                                    style: TextStyle(color: Colors.white),
                                  ))),
                              Expanded(child: Container()),
                              const Text(
                                "Flovorful Fried Fiesta",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              const Text(
                                "By Sudhir Sharma",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white70),
                              ),
                              const Divider(
                                color: Colors.white38,
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.watch_later_outlined,
                                        size: 16,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "15 Mins",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.ac_unit_outlined,
                                        size: 16,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "21 Ingredients",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
