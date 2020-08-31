import 'package:flutter/material.dart';
import 'package:portfolio/components/navbar/navbar_menuItem.dart';
import 'package:portfolio/constants.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        color: kHomeSecondaryDark.withOpacity(0.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [],
            ),
            Row(
              children: [
                MenuItem(
                  title: 'Home',
                  press: () {
                    // Navigator.pushNamed(context, MyHomePage.id);
                  },
                ),
                SizedBox(width: 10.0),
                MenuItem(
                  title: 'About',
                  press: () {
                    // Navigator.pushNamed(context, About.id);
                  },
                ),
                SizedBox(width: 10.0),
                MenuItem(
                  title: 'Portfolio',
                  press: () {
                    // Navigator.pushNamed(context, ServicesPage.id);
                  },
                ),
                SizedBox(width: 10.0),
                MenuItem(
                  title: 'Contact Me',
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
