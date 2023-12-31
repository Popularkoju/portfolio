import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String title;
  TitleText({required this.title,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  const EdgeInsets.only(bottom: 60),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 64, fontWeight: FontWeight.bold),
      ),
    );
  }
}
