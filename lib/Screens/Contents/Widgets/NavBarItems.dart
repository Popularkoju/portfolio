import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../StateManagement/FunctionManagement.dart';

class NavBarItems extends StatelessWidget {
  final int index;
  final String title;

  const NavBarItems(this.index, this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context
            .read<FunctionalManagement>()
            .scrollToIndex(index);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 12.0),
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline3
              ?.copyWith(
            fontSize: context
                .watch<
                FunctionalManagement>()
                .selectedNavIndex ==
                index &&
                context
                    .watch<
                    FunctionalManagement>()
                    .isNavHover
                ? 30
                : null,
          ),
        ),
      ),
    );
  }
}
