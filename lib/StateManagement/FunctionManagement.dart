import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class FunctionalManagement with ChangeNotifier, DiagnosticableTreeMixin {
  bool isSkilledHover = false;
  bool _isNavHover = false;

  bool get isNavHover => _isNavHover;

  set isNavHover(bool value) {
    _isNavHover = value;
    notifyListeners();
  }

  int _selectedSkillsIndex = 0;
  int _selectedNavIndex = 0;

  int get selectedNavIndex => _selectedNavIndex;

  set selectedNavIndex(int value) {
    _selectedNavIndex = value;
    notifyListeners();
  }

  int get selectedSkillsIndex => _selectedSkillsIndex;

  set selectedSkillsIndex(int value) {
    _selectedSkillsIndex = value;
    notifyListeners();
  }

  ItemScrollController scrollController = ItemScrollController();

  scrollToIndex(index) {
    scrollController.scrollTo(
        index: index,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInExpo


    );
  }

  hoverFunc(bool hover) {
    isSkilledHover = hover;
    notifyListeners();
  }

  hoverFuncNav(bool hover) {
    print(hover);
    isNavHover = hover;
    notifyListeners();
  }
}
