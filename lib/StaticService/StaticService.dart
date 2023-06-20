import 'package:flutter/material.dart';

class StaticService {
  static Future<Object?> pushPage(
      {required BuildContext context, required Widget route}) async {
    return await Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => route));
  }

  static pushReplacement(
      {required BuildContext context, required Widget route}) async {
    await Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => route));
  }
}