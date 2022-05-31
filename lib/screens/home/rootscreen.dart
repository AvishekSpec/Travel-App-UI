import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import 'package:travel_app/screens/home/home_screen.dart';

import '../../utilities/colors.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: kPrimaryClr,
          selectedItemColor: Color.fromARGB(255, 245, 242, 247),
          unselectedItemColor: Color.fromARGB(255, 199, 194, 194),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
              backgroundColor: Color.fromARGB(255, 97, 80, 247),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month_outlined,
              ),
              label: 'Calendar',
              backgroundColor: Color.fromARGB(255, 97, 80, 247),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: 'Bookmark',
              backgroundColor: Color.fromARGB(255, 97, 80, 247),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
              ),
              label: 'Feedback',
              backgroundColor: Color.fromARGB(255, 97, 80, 247),
            ),
          ]),
    );
  }
}
