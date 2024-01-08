import 'package:cbebirrbybr7/screens/home_page.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
      body: const HomePage(),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: const Color.fromRGBO(143, 39, 143, 1),
        height: 50,
        index: 0,
        items: const [
          CurvedNavigationBarItem(
            // label: 'Home',
            // labelStyle: TextStyle(color: Colors.white, height: 1,),
            child: Icon(
              FontAwesomeIcons.houseUser,
              color: Colors.white,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              FontAwesomeIcons.creditCard,
              color: Colors.white,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              FontAwesomeIcons.buildingColumns,
              color: Colors.white,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              FontAwesomeIcons.grip,
              color: Colors.white,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              FontAwesomeIcons.elementor,
              color: Colors.white,
            ),
          ),
        ],
        onTap: (index) {},
      ),
    );
  }
}
