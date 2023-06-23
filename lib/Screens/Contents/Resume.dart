import 'package:flutter/material.dart';
import '../../Components/SpacePallete.dart';

class Resume extends StatelessWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SpacePallete.paddingHorizontal),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Resume",
            style: Theme.of(context).textTheme.headline1,
          ),
         SpacePallete.gapBetweenTopic,

        ],
      ),
    );
  }
}
