import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:profile/Screens/Contents/About%20me.dart';
import 'package:profile/Screens/Contents/Contacts.dart';
import 'package:profile/Screens/Contents/FirstShow.dart';
import 'package:profile/Screens/Contents/Projects.dart';
import 'package:profile/Screens/Contents/Skills.dart';

import '../Models/ProjectsModel.dart';
import '../Models/SkillModel.dart';

class DataManagement with ChangeNotifier, DiagnosticableTreeMixin{
  //
  // String ?_selectedKey;
  //
  // String? get selectedKey => _selectedKey;
  //
  // Map<String, IconData> topicons = {
  //   "About me": Icons.info,
  //   "Profile": Icons.pest_control_rounded,
  //   "Contact": Icons.call,
  // };
  //
  // set selectedKey(String ?value) {
  //   _selectedKey = value;
  //   notifyListeners();
  // }

  List<SkillModel> skills = [
    SkillModel("Flutter", "assets/flutter.png"),
    SkillModel("Figma", "assets/figma.png"),
    SkillModel("Photoshop", "assets/photoshop.png"),
    SkillModel("Html/css", "assets/html.png"),

  ];
  List<ProjectModel> projectData = [
    ProjectModel(
        image: "assets/faasto.png",
        title: "Faasto",
        description:
        "Flutter-based e-commerce application which is able to list products based on location. Ordering products, shopping carts, secure checkout and order tracking.  "),
    ProjectModel(
        image: "assets/faasto_partner.png",
        title: "Faasto Partner",
        description:
        "Part of  Faasto app for distributors for the Order acceptance, order confirmation, billing, and order delivery. The user's assigned roles facilitate quick access to their particular task.  "),
    ProjectModel(
        image: "assets/beat.jpg",
        title: "Beat Management",
        description:
        "Flutter based windows app for assigning outlets to FR(Field Representatives) for FMCG company."),
  ];

  List<Widget> myWidgets =[ const FirstShow(), const AboutMe(), const ProjectScreen(), const Skills(), const Contacts()];

}