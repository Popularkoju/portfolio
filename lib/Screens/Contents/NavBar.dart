
import 'package:flutter/material.dart';
import 'package:profile/Screens/Contents/Widgets/NavBarItems.dart';
import 'package:profile/StateManagement/DataManagement.dart';
import 'package:profile/StateManagement/FunctionManagement.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../Components/SpacePallete.dart';

class NavBar extends StatefulWidget {
  NavBar({Key? key}) : super(key: key);

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
              IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu))
            ],
          )),
      desktop: (_) {
        Future.delayed(const Duration(milliseconds: 50))
            .then((value) => Scaffold.of(context).closeDrawer());
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...context
                        .read<DataManagement>()
                        .navBarItemsName
                        .asMap()
                        .entries
                        .map((e) => Padding(
                          padding: const EdgeInsets.only(left: 24.0),
                          child: MouseRegion(
                                onExit: (v) {
                                  context
                                      .read<FunctionalManagement>()
                                      .isNavHover = false;
                                },
                                onEnter: (v) {
                                  context
                                      .read<FunctionalManagement>()
                                      .selectedNavIndex = e.key + 1;
                                  context
                                      .read<FunctionalManagement>()
                                      .isNavHover = true;
                                },
                                cursor: SystemMouseCursors.click,
                                child: NavBarItems(e.key+1, e.value)
                              ),
                        ))
                        .toList()
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
