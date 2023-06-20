import 'package:flutter/material.dart';
import 'package:profile/Screens/Contents/Widgets/NavBarItems.dart';
import 'package:profile/StateManagement/DataManagement.dart';
import 'package:provider/provider.dart';
import '../../../StateManagement/FunctionManagement.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0Xff084B66),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Stack(
            children: [
              Positioned(
                  child: Opacity(
                      opacity: .1, child: Image.asset("assets/tech3.png"))),
              GestureDetector(
                onTap: () {
                  context.read<FunctionalManagement>().scrollToIndex(0);
                },
                child: DrawerHeader(
                    child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                              "assets/smallpp.jpg",
                            )),
                        Text(
                          "Popular Koju",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        Text(
                          "Flutter Developer",
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                )),
              ),
            ],
          ),
          Flexible(
            child: ListView(
              children: [
                ...context
                    .read<DataManagement>()
                    .navBarItemsName
                    .asMap()
                    .entries.map((e) => navDrawerItems(e.key+1, e.value, context)).toList()

              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget navDrawerItems(int index, String title, BuildContext context) {
  return ListTile(
    title: Text(
      title,
      style: Theme.of(context).textTheme.headline4,
    ),
    onTap: () {
      context.read<FunctionalManagement>().scrollToIndex(index);
      Scaffold.of(context).closeDrawer();
    },
  );
}
