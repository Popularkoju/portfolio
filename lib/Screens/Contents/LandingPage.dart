import 'package:flutter/material.dart';
import 'package:profile/StateManagement/DataManagement.dart';
import 'package:profile/StateManagement/FunctionManagement.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'NavBar.dart';

class LandingPage extends StatefulWidget {

  LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    // TODO: implement initState
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   if(MediaQuery.of(context).size.width>600) {
    //     Scaffold.of(context).closeDrawer();
    //   }
    //   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          NavBar(),
          const Divider(
            thickness: 2,
          ),
          // Expanded(
          //   child: ListView(
          //     controller: controller,
          //     // mainAxisAlignment: MainAxisAlignment.center,
          //     children: const [
          //       const SizedBox(
          //         height: 100,
          //       ),
          //       FirstShow(),
          //       AboutMe(),
          //       ProjectScreen(),
          //       Skills(),
          //       Contacts()
          //     ],
          //   ),
          // ),
          Expanded(
              child: ScrollablePositionedList.builder(
                itemScrollController: context.read<FunctionalManagement>().scrollController,
                  itemCount: context.read<DataManagement>().myWidgets.length ,itemBuilder: (BuildContext context,i){
            return Column(
              children: [
                DataManagement().myWidgets[i],
                const SizedBox(height: 100)
              ],
            );
          }))

        ],
      ),
    );
  }
}
