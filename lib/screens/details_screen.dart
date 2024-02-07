import 'package:flutter/material.dart';
import 'package:food_recipes_app/component/custom_button.dart';
import 'package:food_recipes_app/data/dummy_data.dart';

import '../component/custom_circular_button.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  late PageController _pageController;
  late int _currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(viewportFraction: 0.95);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Food Recipes",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CircularButton(
                  onTap: () {}, icon: Icons.favorite_border_outlined))
        ],
      ),
      body: Stack(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 210,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        PageView.builder(
                            controller: _pageController,
                            itemCount: sliderImage.length,
                            onPageChanged: (index) {
                              setState(() {
                                _currentIndex = index;
                              });
                            },
                            itemBuilder: (context, index) {
                              return Container(
                                height: 210,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                width: MediaQuery.of(context).size.width,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      sliderImage[index],
                                      fit: BoxFit.cover,
                                    )),
                              );
                            }),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircularButton(
                            onTap: () {
                              setState(() {
                                if (_currentIndex > 0) {
                                  _currentIndex--;
                                  _pageController.animateToPage(_currentIndex,
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.easeIn);
                                }
                              });
                            },
                            icon: Icons.arrow_back_ios_rounded),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                              indicators(sliderImage.length, _currentIndex),
                        ),
                        CircularButton(
                            onTap: () {
                              setState(() {
                                if (_currentIndex < sliderImage.length - 1) {
                                  _currentIndex++;
                                  _pageController.animateToPage(_currentIndex,
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.easeInOut);
                                }
                              });
                            },
                            icon: Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        const Text(
                          "Savor the Aromas: Exquisite Exotic Spice Infusion Rice Bowl",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: RichText(
                              text: const TextSpan(
                                  text: "By",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                  children: [
                                TextSpan(
                                    text: "John Doe",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16))
                              ])),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.watch_later_outlined,
                                  size: 16,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "15 Mins",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.ac_unit_outlined,
                                  size: 16,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "21 Ingredients",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.bubble_chart,
                                  size: 16,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "2 Servings",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          color: Colors.black12,
                        ),
                        const Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                          "when an unknown printer took a galley of type and scrambled it to make a type "
                          "specimen book. It has survived not only five centuries, but also the leap into"
                          " electronic typesetting, remaining essentially unchanged."
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                          "when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
                          "It has survived not only five centuries, but also the leap into electronic typesetting, "
                          "remaining essentially unchanged.",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 0, bottom: 10),
              child: CustomButton(
                  bgColor: Colors.black87,
                  textColor: Colors.white,
                  text: "Start Cooking",
                  onTap: () {}),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: const EdgeInsets.all(3),
        width: 8,
        height: 8,
        decoration: BoxDecoration(
            color: currentIndex == index ? Colors.black : Colors.black26,
            shape: BoxShape.circle),
      );
    });
  }
}
