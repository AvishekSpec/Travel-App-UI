import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/screens/home/home_screen.dart';
import 'package:travel_app/screens/home/rootscreen.dart';
import 'package:travel_app/utilities/colors.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Image.asset(
        "assets/sunset2.jpg",
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Spacer(),
            Text(
              "Welcome",
              style: TextStyle(
                  fontSize: 30, color: kwhiteClr, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Explore Nepal with our travel app and get the feeling like you have never experienced before",
              textAlign: TextAlign.center,
              style: TextStyle(color: kwhiteClr, fontSize: 15, height: 1.5),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () => Get.to(RootScreen()),
              child: Container(
                height: 55,
                width: 400,
                decoration: BoxDecoration(
                  color: kwhiteClr,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/google.jpg",
                        height: 30,
                        width: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Sign in with Google",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () => Get.to(RootScreen()),
              child: Container(
                height: 55,
                width: 400,
                decoration: BoxDecoration(
                  color: kwhiteClr,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/fb.png",
                        height: 30,
                        width: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Sign in with Facebook",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ))
    ]));
  }
}
