import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Photo extends StatelessWidget {
  const Photo({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 90,
      right: 160,
      child: Animate(

        child: Container(
          height: 450,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: const DecorationImage(
                  image: AssetImage(
                    "assets/pp.jpg",
                  ),
                  fit: BoxFit.cover)),
        ),
      ).scaleXY(duration: 1500.ms,begin: 2, end:1).fade(duration: 2000.ms,begin: 0.5, end: 1),
    );
  }
}
