import 'package:flutter/material.dart';
import 'package:profile/Components/CustomTheme.dart';
import 'package:profile/Screens/HomeScreen.dart';
import 'package:profile/StateManagement/FunctionManagement.dart';
import 'package:provider/provider.dart';

import 'StateManagement/DataManagement.dart';

void main() {

  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create:(_)=>DataManagement()),
        ChangeNotifierProvider(create:(_)=>FunctionalManagement())
      ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Popular',
      debugShowCheckedModeBanner: false,
      theme: CustomTheme().darkTheme,
      home: const HomeScreen(),
    );
  }
}

// 2Xl56x79GZwB0G-emt