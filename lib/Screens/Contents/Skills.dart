
import 'package:flutter/material.dart';
import 'package:profile/Screens/Contents/Widgets/TitleText.dart';
import 'package:profile/StateManagement/DataManagement.dart';
import 'package:profile/StateManagement/FunctionManagement.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../Components/SpacePallete.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ScreenTypeLayout.builder(
      mobile: (_) => skillView(true, context),
      desktop: (_) => Padding(
        padding:
            EdgeInsets.symmetric(horizontal: SpacePallete.paddingHorizontal),
        child: skillView(false, context),
      ),
    );
  }

  Widget skillView(bool mobile, BuildContext context) {
    ScrollController scrollController = ScrollController();
    return Column(
      crossAxisAlignment: mobile? CrossAxisAlignment.center:CrossAxisAlignment.start,
      children: [
        TitleText(title: "What I do"),
        Container(
            height: mobile?200:300,
            child: Scrollbar(
              controller: scrollController,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  controller: scrollController,
                    scrollDirection: Axis.horizontal,
                    itemCount: context.read<DataManagement>().skills.length,
                    itemBuilder: (BuildContext context, i) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(16),
                          onTap: () {
                            if(mobile){
                              context.read<FunctionalManagement>().selectedSkillsIndex = i;
                            }
                          },
                          onHover: (hover) {
                            context.read<FunctionalManagement>().hoverFunc(hover);
                            context.read<FunctionalManagement>().selectedSkillsIndex = i;
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            width:mobile?200:300,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage(context.read<DataManagement>().skills[i].image), ),
                                color:  context.watch<FunctionalManagement>()
                                    .selectedSkillsIndex ==
                                    i &&
                                    context.watch<FunctionalManagement>().isSkilledHover?Colors.black87:Colors.black26,
                                borderRadius: BorderRadius.circular(16)),
                            child:  context.watch<FunctionalManagement>()
                              .selectedSkillsIndex ==
                              i &&
                              context.watch<FunctionalManagement>().isSkilledHover ?Align(
                              alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(context.read<DataManagement>().skills[i].name, style:
                                   Theme.of(context).textTheme.headline3,),
                                ),
                              ):null

                          ),
                        ),
                      );
                    }),
              ),
            )),
      ],
    );
  }
}
