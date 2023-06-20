import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class FunctionalManagement with ChangeNotifier, DiagnosticableTreeMixin{
 bool isSkilledHover = false;
 int _selectedSkillsIndex = 0;

 int get selectedSkillsIndex => _selectedSkillsIndex;

  set selectedSkillsIndex(int value) {
    _selectedSkillsIndex = value;
    notifyListeners();
  }

  ItemScrollController scrollController= ItemScrollController();
  scrollToIndex(index){
    scrollController.scrollTo(
        index: index,
        duration: const Duration(milliseconds: 500),
        curve: Curves.linear);
  }

  hoverFunc(bool hover){
    isSkilledHover = hover;
    notifyListeners();
  }
}