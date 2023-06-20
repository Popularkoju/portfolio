import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../StateManagement/DataManagement.dart';

class Information extends StatelessWidget {

  const Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Animate(
              effects: [
                FadeEffect(duration: 1500.ms, begin: .1, end: 1),
              ],
              child: Container(
                color: Colors.grey.withOpacity(.2),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text(
                        context.watch<DataManagement>().selectedKey??"",
                        style: GoogleFonts.saira(
                            fontSize: 45, color: Colors.blueGrey),
                      ),

                      Row(
                        children: [
                          Expanded(
                            child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.green, width: 5),borderRadius: BorderRadius.circular(10,)),
                            child: Text("Hello"),),
                          ),
                          
                          Text("lonhskdfk dkfjksdjfk jdslkfjlksdj flsdjlfj\n adskjfkladjsfk jadskfjkl djsfkla sdklfhalsdkfj")
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ).fade().scaleXY(end: 1, begin: 0.1),
          ),
        ],
      ),
    );
  }
}
