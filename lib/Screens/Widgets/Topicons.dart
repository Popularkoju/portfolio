import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/StateManagement/DataManagement.dart';
import 'package:provider/provider.dart';

class Topicons extends StatelessWidget {
   Topicons({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Animate(
      child: Row(
        children: context
            .read<DataManagement>()
            .topicons
            .entries
            .map((e) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: MouseRegion(
                      onEnter: (v) {
                        context.read<DataManagement>().selectedKey = e.key;
                      },
                      onExit: (v) {
                        context.read<DataManagement>().selectedKey = null;
                      },
                      child: GestureDetector(
                        onTap: () {
                          context.read<DataManagement>().selectedKey = e.key;

                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 400),
                          color: context.watch<DataManagement>().selectedKey ==
                                  e.key
                              ? Colors.blue
                              : Colors.blueGrey,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child:
                                context.watch<DataManagement>().selectedKey ==
                                        e.key
                                    ? Row(
                                        children: [
                                          Icon(
                                            e.value,
                                            color: Colors.black,
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            e.key.toString(),
                                            style: GoogleFonts.saira(
                                              fontSize: 18,
                                            ),
                                          ),
                                        ],
                                      )
                                    : Icon(
                                        e.value,
                                        color: Colors.white,
                                      ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ))
            .toList(),
      ),
    ).fade(duration: 2500.ms, begin: 0, end: 1);
  }
}
