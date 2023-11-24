import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:profile/Screens/Contents/Widgets/Social.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../Components/Animations/TypewriterText.dart';
import '../../Components/ButtonOutline.dart';
import '../../Components/SpacePallete.dart';

class FirstShow extends StatelessWidget {
  const FirstShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: aboutInfo(context, true),
      ),
      tablet: (_)=> Container(),
      desktop: (_) {
        return Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: SpacePallete.paddingHorizontal),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: aboutInfo(context, false)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 3, color: Color(0xff25B1FF)),
                              image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/pp.jpg",
                                  ),
                                  fit: BoxFit.cover)),
                          height: 500,
                          width: 400,
                        ),
                        Positioned(
                          top: 18,
                          right: 18,
                          child: Animate(
                            child: Transform(
                              transform: Matrix4.identity()
                                ..rotateZ(-5 * 3.1415927 / 180),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border:
                                        Border.all(width: 3, color: Colors.white)),
                                height: 500,
                                width: 400,
                              ),
                            ),
                          ).fade(duration: 400.ms).shake(delay: 500.ms),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
        );

  }

  Widget aboutInfo(BuildContext context, bool mobile) {
    return Column(
      crossAxisAlignment:
          mobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Text(
          'Hello,',
        style: Theme.of(context).textTheme.headline2!,
        ),
        const SizedBox(
          height: 12,
        ),
        TypewriterText(
          duration:const Duration(seconds: 1),
         text:  "I’ m Popular Koju",
          style: Theme.of(context)
              .textTheme
              .headline1
              !.copyWith(fontSize: 48, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 12,
        ),

        Text(
          "Mobile app developer | Flutter",
          style: Theme.of(context).textTheme.headline4?.copyWith(
                color: const Color(0xffADADAD),
              ),
        ),
        const SizedBox(
          height: 28,
        ),
        const Social(),
        const SizedBox(
          height: 16,
        ),
        AppButtonOutline(onPressedFunction: () async {
          await downloadPdf("https://drive.google.com/uc?export=download&id=1sPhxEqNVYMcOO-iFwkIJ5KsdXfCuf4wO");
        }, text: "Download CV")

      ],
    );
  }

  downloadPdf(url){
    AnchorElement anchorElement = AnchorElement(href: url);
    anchorElement.download ="popular_koju_cv";
    anchorElement.click();
  }

}

// https://drive.google.com/file/d/1sPhxEqNVYMcOO-iFwkIJ5KsdXfCuf4wO/view?usp=drive_link
// https://drive.google.com/file/d/1ejZO-_aJC5Lkrx1pTy4PyE4bkMfzhGjw/view
// https://drive.google.com/uc?export=download&id=1ejZO-_aJC5Lkrx1pTy4PyE4bkMfzhGjw