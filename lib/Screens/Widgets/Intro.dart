import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 200.0),
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
                      children: [
                        Text(
                          "I'm",
                          style: GoogleFonts.dancingScript(fontSize: 40),
                        ),
                        Text(
                          "Impress Khati",
                          style: GoogleFonts.dancingScript(
                              fontSize: 100, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "A passionate software\ndeveloper.",
                          style: GoogleFonts.saira(
                              fontSize: 45, color: Colors.blueGrey),
                        )
                      ],
                    ),
                  ),
                ),
              ).fade().scaleXY(end: 1, begin: 0.1),
            ),
          ),
        ],
      ),
    );
  }
}
