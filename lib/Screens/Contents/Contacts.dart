import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../Components/SpacePallete.dart';
import 'Widgets/TitleText.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TitleText(title: "Let's Get In Touch"),
            SizedBox(
              height: 200,
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.center, children: [
                Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Please feel free to reach out to me to discuss your next project or collaboration. I am eager to contribute my expertise and creativity to help you achieve your vision. Let's bring your ideas to life and make an impact together. Contact me today to get started.!",
                          style:
                          Theme.of(context).textTheme.headline5,
                          softWrap: true,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )),
                SpacePallete.spaceExtraLarge,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email),
                    SpacePallete.spaceMedium,
                    Text("popular@gmail.com", style: Theme.of(context).textTheme.headline5,),

                  ],),
                SpacePallete.spaceMedium,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone),
                    SpacePallete.spaceMedium,
                    Text("9843212372", style: Theme.of(context).textTheme.headline5,),

                  ],)
              ],),
            ),
          ],
        );

      },
      desktop: (_) {
         return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SpacePallete.paddingHorizontal),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TitleText(title: "  Let's Get In Touch"),
              Container(
                height: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center, children: [
                  // SpacePallete.spaceExtraLarge,
                  Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Please feel free to reach out to me to discuss your next project or collaboration. I am eager to contribute my expertise and creativity to help you achieve your vision. Let's bring your ideas to life and make an impact together. Contact me today to get started.!",
                            style:
                            Theme
                                .of(context)
                                .textTheme
                                .headline4,
                            softWrap: true,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )),
                  SpacePallete.spaceExtraLarge,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email),
                      SpacePallete.spaceMedium,
                      Text("popular@gmail.com", style: Theme
                          .of(context)
                          .textTheme
                          .headline5,),

                    ],),
                  SpacePallete.spaceMedium,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone),
                      SpacePallete.spaceMedium,
                      Text("9843212372", style: Theme
                          .of(context)
                          .textTheme
                          .headline5,),

                    ],)
                ],),
              ),
            ],
          ),
        );
      },


    );
  }
}
