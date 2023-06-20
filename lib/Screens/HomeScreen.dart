import 'package:flutter/material.dart';
import 'package:profile/Screens/Contents/Widgets/NavDrawer.dart';
import 'package:profile/StateManagement/DataManagement.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'Contents/LandingPage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool hover = false;
  ItemScrollController controller = ItemScrollController();
  double scrollPosition = 0.0;

  @override
  void initState() {
    // TODO: implement initState

    // controller.addListener(() {
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer:const NavDrawer(),
      // backgroundColor: const Color(0Xff084B66),
      body: Stack(
        alignment: Alignment.centerRight,
        children: [
          Positioned(
              child: Opacity(
                  opacity: 0.2,
                  child: Image.asset(
                    "assets/tech.png",
                  ))),
          LandingPage(),
        ],
      ),
    );
  }
}
