import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_recipes_app/constants/routes.dart';
import 'package:food_recipes_app/constants/string.dart';

import '../component/custom_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // Timer(const Duration(seconds: 4),
    //     () => Navigator.pushReplacementNamed(context, homeScreen));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light),
      child: Scaffold(
        body: Stack(
          children: [
            Image(
              image: const AssetImage("assets/images/splash_bg_image.png"),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.5),
                    Colors.black
                  ])),
            ),
            Positioned(
                top: 100,
                left: 0,
                right: 0,
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 200,
                        height: 200,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                              fit: BoxFit.cover,
                              "https://www.dineout.co.in/blog/wp-content/uploads/2018/06/shutterstock_315882395-700x467.jpg"),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Food Recipe",
                        style: TextStyle(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                )),
            Positioned(
                bottom: 20,
                left: 50,
                right: 50,
                child: CustomButton(
                  bgColor: Colors.white,
                  height: 45,
                  mFontWeight: FontWeight.w600,
                  textSize: 18,
                  text: getStarted,
                  onTap: () {
                    Navigator.pushReplacementNamed(context, dashboard);
                  },
                ))
          ],
        ),
      ),
    );
  }
}
