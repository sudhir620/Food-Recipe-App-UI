import 'package:flutter/material.dart';
import 'package:food_recipes_app/constants/routes.dart';
import 'package:food_recipes_app/constants/string.dart';
import 'package:food_recipes_app/screens/dashboad_screen.dart';
import 'package:food_recipes_app/screens/details_screen.dart';
import 'package:food_recipes_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(useMaterial3: true, scaffoldBackgroundColor: Colors.white),
      initialRoute: defaultScreen,
      routes: {
        defaultScreen: (context) => const SplashScreen(),
        dashboard: (context) => const DashboardScreen(),
        detailScreen: (context) => const DetailsScreen()
      },
    );
  }
}
