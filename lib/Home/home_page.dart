import 'package:flutter/material.dart';
import 'package:portfolio/components/navbar/navbar.dart';
import 'package:portfolio/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _controller;

  @override
  void initState() {
    //Initialize the  scrollController
    _controller = ScrollController();
    super.initState();
  }

  void scrollCallBack(DragUpdateDetails dragUpdate) {
    setState(
      () {
        // Note: 3.5 represents the theoretical height of all my scrollable content. This number will vary for you.
        _controller.position.moveTo(dragUpdate.globalPosition.dy * 0.6);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('home1.jpg'), fit: BoxFit.cover),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      child: Image.asset(
                        'WisteriaLogo.png',
                      ),
                    ),
                  ],
                ),
                Navbar(),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: kHomePrimaryDark,
                    image: DecorationImage(
                      image: AssetImage('home.png'),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // SizedBox(width: 150),
                          Image.asset(
                            'Asta.png',
                          ),
                          // SizedBox(width: 100),
                          Container(
                            decoration: BoxDecoration(
                              color: kHomePrimaryDark.withOpacity(.7),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                            alignment: Alignment.centerLeft,
                            child: Text('Flutter Hashira',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
