import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:profile/Screens/Contents/Widgets/NavBarItems.dart';
import 'package:profile/StateManagement/DataManagement.dart';
import 'package:profile/StateManagement/FunctionManagement.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../Components/SpacePallete.dart';

class NavBar extends StatefulWidget {

  NavBar( {Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
        mobile: (_) => Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () {
              context.read<FunctionalManagement>().scrollToIndex(0);
            },
            child: Image.asset(
              "assets/logo.png",
              height: 60,
              width: 60,
            )),

        IconButton(onPressed: (){
          Scaffold.of(context).openDrawer();
        }, icon: Icon(Icons.menu))
        // PopupMenuButton(
        //     itemBuilder: (_) => [
        //           PopupMenuItem(
        //             child: navItems(1, "About", context),
        //           ),
        //           PopupMenuItem(
        //             child: navItems(2, "Projects", context),
        //           ),
        //           PopupMenuItem(
        //             child: navItems(3, "Skills", context),
        //           ),
        //           PopupMenuItem(
        //             child: navItems(4, "Contact", context),
        //           ),
        //         ]),
      ],
    )),
        desktop: (_) {
          return Padding(
    padding:
        EdgeInsets.symmetric(horizontal: SpacePallete.paddingHorizontal)
            .copyWith(top: 24),
    child: SizedBox(
      // color: Colors.blueGrey,
      height: 60,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
                onTap: () {
                  context.read<FunctionalManagement>().scrollToIndex(0);
                },
                child: Image.asset("assets/logo.png")),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavBarItems(1, "About"),
              NavBarItems(2, "Projects"),
              NavBarItems(3, "Skills"),
              NavBarItems(4, "Contact"),
            ],
          ),
        ],
      ),
    ),
          );
        },
      );
  }

  // Widget navItems(int pixel, String title, BuildContext context) {
  //   return MouseRegion(
  //     cursor: SystemMouseCursors.click,
  //     child: GestureDetector(
  //       onTap: () {
  //         // // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
  //         //   final RenderBox box1 = key1.currentContext?.findRenderObject()as RenderBox ;
  //         //   setState(() {
  //         //     position = box1.localToGlobal(Offset.zero);
  //         //     size = box1.size;
  //         //   // });
  //         //
  //         //   print(position);
  //         //   print(size);
  //         // });
  //
  //         // widget.scrollControlle
  //
  //         widget.scrollController.scrollTo(index: pixel,
  //             duration: Duration(milliseconds: 500), curve: Curves.linear);
  //       },
  //       child: Padding(
  //         padding: const EdgeInsets.only(left: 12),
  //         child: Text(
  //           title,
  //           style: Theme.of(context)
  //               .textTheme
  //               .headline3
  //               ?.copyWith(color: Colors.white),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
