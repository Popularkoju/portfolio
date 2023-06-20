import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../Components/SpacePallete.dart';

class NavBar extends StatefulWidget {
  ItemScrollController scrollController;

  NavBar(this.scrollController, {Key? key}) : super(key: key);

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
                    widget.scrollController.scrollTo(index: 0,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.linear);
                  },
                  child: Image.asset(
                    "assets/logo.png",
                    height: 60,
                    width: 60,
                  )),
              PopupMenuButton(
                  itemBuilder: (_) => [
                        PopupMenuItem(
                          child: navItems(1, "About", context),
                        ),
                        PopupMenuItem(
                          child: navItems(2, "Projects", context),
                        ),
                        PopupMenuItem(
                          child: navItems(3, "Skills", context),
                        ),
                        PopupMenuItem(
                          child: navItems(4, "Contact", context),
                        ),
                      ]),
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
                        widget.scrollController.scrollTo(index: 0,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.linear);
                      },
                      child: Image.asset("assets/logo.png")),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    navItems(1, "About", context),
                    navItems(2, "Projects", context),
                    navItems(3, "Skills", context),
                    navItems(4, "Contact", context),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget navItems(int pixel, String title, BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          // // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          //   final RenderBox box1 = key1.currentContext?.findRenderObject()as RenderBox ;
          //   setState(() {
          //     position = box1.localToGlobal(Offset.zero);
          //     size = box1.size;
          //   // });
          //
          //   print(position);
          //   print(size);
          // });

          // widget.scrollControlle

          widget.scrollController.scrollTo(index: pixel,
              duration: Duration(milliseconds: 500), curve: Curves.linear);
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headline3
                ?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
