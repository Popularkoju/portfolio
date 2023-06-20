import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:profile/Components/SpacePallete.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'Widgets/TitleText.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 34.0),
        child: Column(
          children: [
            TitleText(title: "About Me"),
            infoText(
                "Hi, a passionate and dedicated developer specializing in creating innovative solutions. With a deep love for coding and problem-solving, I strive to deliver exceptional results that make a difference.",
                context),
            const SizedBox(
              height: 30,
            ),
            infoText(
                "I possess a strong expertise in various programming languages and frameworks, enabling me to develop robust web applications and intuitive websites. Whether it's building dynamic e-commerce platforms, optimizing user experiences, or implementing cutting-edge technologies, I am committed to exceeding expectations",
                context)
          ],
        ),
      ),
      desktop: (_) {
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
                      border: Border.all(width: 3, color: Color(0xff25B1FF)),
                    ),
                    height: 500,
                    width: double.infinity,
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
                            height: 500,
                            width: MediaQuery.of(context).size.width - 240),
                      )),
                  Positioned(
                      top: 100,
                      left: 100,
                      right: 100,
                      child: Column(
                        children: [
                          infoText(
                              "Hi, a passionate and dedicated developer specializing in creating innovative solutions. With a deep love for coding and problem-solving, I strive to deliver exceptional results that make a difference.",
                              context),
                          const SizedBox(
                            height: 20,
                          ),
                          infoText(
                              "I possess a strong expertise in various programming languages and frameworks, enabling me to develop robust web applications and intuitive websites. Whether it's building dynamic e-commerce platforms, optimizing user experiences, or implementing cutting-edge technologies, I am committed to exceeding expectations",
                              context)
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
      },
    );
  }

  Widget infoText(String text, BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline3,
    );
  }
}
