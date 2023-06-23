import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:profile/Screens/Contents/About%20me.dart';
import 'package:profile/Screens/Contents/Contacts.dart';
import 'package:profile/Screens/Contents/FirstShow.dart';
import 'package:profile/Screens/Contents/Projects.dart';
import 'package:profile/Screens/Contents/Skills.dart';

import '../Models/ProjectsModel.dart';
import '../Models/SkillModel.dart';

class DataManagement with ChangeNotifier, DiagnosticableTreeMixin {
  List<String> navBarItemsName = ["About", "Projects", "Skills", "Contact"];
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
        image: "assets/fuser.png",
        title: "Fuser",
        description:
        "Flutter based mobile app for Field representatives for collecting outlet's order(offline and online) with billing system, orders history, offline to FR(Field Representatives) for FMCG company."),
    ProjectModel(
        image: "assets/beat.jpg",
        title: "Beat Management",
        description:
            "Flutter based windows app for assigning outlets to FR(Field Representatives) for FMCG company."),
  ];

  List<Widget> myWidgets = [
    const FirstShow(),
    const AboutMe(),
    const ProjectScreen(),
    const Skills(),
    const Contacts()
  ];

  Map<String, String> socials = {
    "assets/github.png": "https://github.com/Popularkoju",
    "assets/linkedin.png": "https://www.linkedin.com/in/popularkoju/",
    "assets/facebook.png": "https://www.facebook.com/populars.sth",
  };

  String aboutMe =
      """I am a a passionate and dedicated Flutter developer with a strong background in creating cross-platform mobile applications. With 1.5 years of experience in software development, I have honed my skills and expertise in building innovative and user-friendly mobile solutions.
     \n  My journey as a Flutter developer began when I discovered its powerful capabilities to create stunning UIs and deliver exceptional performance across iOS and Android platforms. Since then, I have been captivated by the possibilities Flutter offers, and I strive to leverage its potential to develop high-quality applications that meet client requirements and exceed user expectations.,Collaboration and communication are fundamental to my work approach.
      \n I enjoy working closely with cross-functional teams, including designers, backend developers, and product managers, to understand project goals and deliver outstanding results. My strong problem-solving skills enable me to identify and address challenges promptly, ensuring timely project completion while maintaining the highest quality standards.
      \n I am excited about the opportunity to contribute to your project and create exceptional Flutter applications that make a difference. If you're looking for a dedicated Flutter developer who is passionate about crafting remarkable mobile experiences, I would love to discuss how I can help bring your ideas to life.Thank you for taking the time to learn more about me. I look forward to connecting with you soon!""";
}
