
import 'package:flutter/material.dart';


class AppButtonOutline extends StatelessWidget {
  final void Function()? onPressedFunction;
  final String? text;
  // final BuildContext context;
  final double? width;
  final double? height;
  final bool isDisabled;
  final double  borderRadius;

   AppButtonOutline(
      {Key? key,
      required this.onPressedFunction,
      required this.text,
      // required this.context,
      this.width,
      this.height,
        this.borderRadius =16,
      this.isDisabled = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(borderRadius),
        // boxShadow:[ CardStylePalette.kBoxShadow]

      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: isDisabled ? () {} : onPressedFunction ?? () {},
          child: Container(
            height: height ?? 40,
            width: width ?? 100,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(borderRadius),
              border: Border.all(color: Colors.white, width: 2)

            ),
            child: Center(child: Text(text?? "", style:Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),)),
          ),
        ),
      ),
    );
    // return OutlinedButton(
    //   style: style,
    //   onPressed: isDisabled ? () {} : onPressedFunction ?? () {},
    //   child: Text(
    //      ?? "does something",
    //     textAlign: TextAlign.center,
    //     style: Theme.of(context).textTheme.bodyText2?.copyWith(
    //         color: isDisabled ? Colors.grey : Theme.of(context).primaryColor),
    //   ),
    // );
  }
}


