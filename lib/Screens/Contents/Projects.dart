import 'package:flutter/material.dart';
import 'package:profile/Models/ProjectsModel.dart';
import 'package:profile/StateManagement/DataManagement.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../Components/SpacePallete.dart';
import 'Widgets/TitleText.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => ProjectsContains(imgHeight: 50, imgWidth: 100, mobile: true),
      desktop: (_) {
        return Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SpacePallete.paddingHorizontal),
          child: ProjectsContains(imgHeight: 150, imgWidth: 200, mobile: false),
        );
      },
    );
  }
}

class ProjectsContains extends StatelessWidget {
  // List<ProjectModel> projectData;
  bool mobile;
  double imgHeight;
  double imgWidth;

  ProjectsContains({required this.imgHeight, required this.imgWidth, required this.mobile,Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: mobile? CrossAxisAlignment.center: CrossAxisAlignment.start,
      children: [
        TitleText(title: "Projects"),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ...context.read<DataManagement>()
                .projectData
                .asMap()
                .entries
                .map((e) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                            alignment: e.key % 2 != 0
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: Text(
                              e.key < 9
                                  ? "0${e.key + 1}"
                                  : (e.key + 1).toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1
                                  ?.copyWith(
                                      color: Color(0xff3D6267),
                                      fontWeight: FontWeight.bold),
                            )),
                        Container(
                          padding: const EdgeInsets.all(16),
                          margin: EdgeInsets.only(bottom: 48),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Color(0xff25B1FF))),
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: imgHeight,
                                width: imgWidth,
                                decoration: BoxDecoration(
                                    // border: Border.all(width: 1, color: Colors.blue),
                                    image: DecorationImage(
                                        image: AssetImage(e.value.image))),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    e.value.title,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    e.value.description,
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                    softWrap: true,
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              )),
                            ],
                          ),
                        )
                      ],
                    ))
                .toList()
          ],
        )
      ],
    );
  }
}
