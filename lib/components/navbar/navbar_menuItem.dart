import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class MenuItem extends StatelessWidget {
  MenuItem({this.title, this.press});

  final String title;

  final Function press;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: kHomeSecondary.withOpacity(0.4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10.0),
        ),
      ),
      onPressed: press,
    );
  }
}
