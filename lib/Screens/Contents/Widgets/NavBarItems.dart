import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../StateManagement/FunctionManagement.dart';

class NavBarItems extends StatelessWidget {
final  int index;
  final String title;
  // final ItemScrollController scrollController;

  const NavBarItems(this.index, this.title,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 50)).then((value) =>   Scaffold.of(context).closeDrawer());

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          context.read<FunctionalManagement>().scrollToIndex(index);
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
