import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../StateManagement/DataManagement.dart';
import '../../../StateManagement/FunctionManagement.dart';

class Social extends StatelessWidget {

  const Social({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Wrap(
      children: context.read<DataManagement>().socials.entries.map((e) => GestureDetector(
        onTap: (){
          context.read<FunctionalManagement>().openURL(Uri.parse(e.value));
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 16, bottom: 12),
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child:
            CircleAvatar(radius: 24, backgroundImage: AssetImage(e.key),),
          ),
        ),
      )).toList(),
    );
  }
}
