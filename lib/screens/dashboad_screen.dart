import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../component/featured_recipe.dart';
import '../component/food_category_list.dart';
import '../component/home_header.dart';
import '../component/home_slider.dart';
import '../component/search_bar.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark),
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: SafeArea(
            child: Column(
              children: [
                const HomeHeader(),
                const Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    physics: AlwaysScrollableScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HomeSlider(),
                        CustomSearchBar(),
                        FoodCategory(),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              "Recommended Recipes",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black),
                            )),
                        FeaturedRecipe(),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              "Popular recipes",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black),
                            )),
                        FeaturedRecipe()
                      ],
                    ),
                  ),
                ),
                BottomNavigationBar(
                    selectedItemColor: Colors.black87,
                    unselectedItemColor: Colors.grey,
                    type: BottomNavigationBarType.fixed,
                    items: const [
                      BottomNavigationBarItem(
                          label: "Home", icon: Icon(Icons.home)),
                      BottomNavigationBarItem(
                          label: "Save", icon: Icon(Icons.favorite_border)),
                      BottomNavigationBarItem(
                          label: "News", icon: Icon(Icons.library_books)),
                      BottomNavigationBarItem(
                          label: "Account", icon: Icon(Icons.person)),
                    ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
