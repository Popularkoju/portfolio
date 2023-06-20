import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:profile/Components/SpacePallete.dart';
import 'package:profile/Screens/Contents/Skills.dart';
import 'package:profile/StateManagement/DataManagement.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../Components/ButtonOutline.dart';
import 'About me.dart';
import 'Contacts.dart';
import 'FirstShow.dart';
import 'NavBar.dart';
import 'Projects.dart';

class LandingPage extends StatelessWidget {
  final ItemScrollController controller;

  LandingPage(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          NavBar(controller),
          const Divider(
            thickness: 2,
          ),
          // Expanded(
          //   child: ListView(
          //     controller: controller,
          //     // mainAxisAlignment: MainAxisAlignment.center,
          //     children: const [
          //       const SizedBox(
          //         height: 100,
          //       ),
          //       FirstShow(),
          //       AboutMe(),
          //       ProjectScreen(),
          //       Skills(),
          //       Contacts()
          //     ],
          //   ),
          // ),
          Expanded(
              child: ScrollablePositionedList.builder(
                itemScrollController: controller,
                  itemCount: context.read<DataManagement>().myWidgets.length ,itemBuilder: (BuildContext context,i){
            return DataManagement().myWidgets[i];
          }))

        ],
      ),
    );
  }
}
