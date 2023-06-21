import 'package:flutter/material.dart';
import 'package:profile/Components/SpacePallete.dart';
import 'package:profile/StateManagement/DataManagement.dart';
import 'package:profile/StateManagement/FunctionManagement.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'Widgets/TitleText.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {


  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 34.0),
        child: Column(
          children: [
            TitleText(title: "About Me"),
            infoText(
                context.read<DataManagement>().aboutMe, context)
          ],
        ),
      ),
      desktop: (_) {

        return Builder(
          builder: (context) {
            context.read<FunctionalManagement>().calculateHeightOfText();
            return Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: SpacePallete.paddingHorizontal),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleText(title: "About Me"),
                  Stack(
                    clipBehavior: Clip.none,
                    // alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 3, color: const Color(0xff25B1FF)),
                        ),
                        height:context.watch<FunctionalManagement>().textHeight,
                        width: double.infinity,
                        // child: CarouselSlider.builder(
                        //   itemCount: context.read<DataManagement>().aboutMe.length,
                        //   itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                        //       Container(
                        //         height: 700,
                        //         width: 300,
                        //         child: infoText(context.read<DataManagement>().aboutMe[itemIndex], context),
                        //       ), options: CarouselOptions(autoPlay: true, scrollDirection: Axis.vertical),
                        // ),
                      ),
                      Positioned(
                          top: 66,
                          // left: 0,
                          right: 16,
                          child: Transform(
                            transform: new Matrix4.identity()
                              ..rotateZ(-5.5 * 3.1415927 / 180),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border:
                                        Border.all(width: 3, color: Colors.white)),
                                height: context.watch<FunctionalManagement>().textHeight,
                                width: MediaQuery.of(context).size.width - 240),
                          )),
                      Positioned(
                          top: 100,
                          left: 100,
                          right: 100,
                          child:
                              // Container(
                              //   color: Colors.blue,
                              //   child: CarouselSlider.builder(
                              //     itemCount: context.read<DataManagement>().aboutMe.length,
                              //     itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                              //         Container(
                              //           height: 500,
                              //           child: infoText(context.read<DataManagement>().aboutMe[itemIndex], context),
                              //         ), options: CarouselOptions(autoPlay: true, scrollDirection: Axis.vertical, aspectRatio:3/4 ),
                              //   ),
                              // )
                              Column(
                            children: [
                              // ...context
                              //     .read<DataManagement>()
                              //     .aboutMe
                              //     .map((e) => infoText(e.toString(), context))
                              //     .toList(),
                              infoText(
                                  context.read<DataManagement>().aboutMe, context)
                            ],
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              ),
            );
          }
        );
      },
    );
  }

  Widget infoText(String text, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Text(
        key: context.read<FunctionalManagement>().textKey,
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
