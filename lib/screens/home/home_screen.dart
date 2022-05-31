import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/model/place_model.dart';
import 'package:travel_app/screens/home/details_screen.dart';
import 'package:travel_app/screens/home/widgets/category_card.dart';
import 'package:travel_app/screens/home/widgets/recommendedcard.dart';
import 'package:travel_app/utilities/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: kwhiteClr,
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/avatar.png"),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    RichText(
                        text: TextSpan(
                            text: "Hello",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black,
                            ),
                            children: [
                          TextSpan(
                            text: ",Avishek",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color.fromARGB(255, 163, 19, 19),
                            ),
                          )
                        ]))
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  " Explore new destinations",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Material(
                  borderRadius: BorderRadius.circular(100),
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        color: kwhiteClr,
                        borderRadius: BorderRadius.circular(100)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                                decoration: InputDecoration(
                              hintText: "Search your destination",
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.orange,
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            )),
                          ),
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: kPrimaryClr,
                            child: Icon(
                              Icons.filter,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Text(
                      " Category",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(children: [
                        CategoryCard(
                            title: "Mountains",
                            image: "assets/mustang.jpg",
                            press: () {}),
                        SizedBox(
                          width: 20,
                        ),
                        CategoryCard(
                            title: "Lakes",
                            image: "assets/sheyphoksundo.jpg",
                            press: () {}),
                        SizedBox(
                          width: 20,
                        ),
                        CategoryCard(
                            title: "Adventure",
                            image: "assets/pokhra-nepal.jpg",
                            press: () {}),
                        SizedBox(
                          width: 20,
                        ),
                        CategoryCard(
                            title: "Sunset",
                            image: "assets/sunset2.jpg",
                            press: () {}),
                      ])
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    const Text(
                      " Recommended",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                    height: 320,
                    child: ListView.builder(
                        itemCount: places.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:
                                const EdgeInsets.only(left: 8, right: 15.0),
                            child: Row(
                              children: [
                                RecommendedCard(
                                  placeInfo: places[index],
                                  press: () {
                                    Get.to(
                                        DetailScreen(placeInfo: places[index]));
                                  },
                                )
                              ],
                            ),
                          );
                        })),
              ])),
        ));
  }
}
