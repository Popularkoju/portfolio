import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:url_launcher/url_launcher.dart';

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
        curve: Curves.easeInExpo);
  }

  Future<void> openURL(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.platformDefault,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  hoverFunc(bool hover) {
    isSkilledHover = hover;
    notifyListeners();
  }

  hoverFuncNav(bool hover) {
    isNavHover = hover;
    notifyListeners();
  }

  var textKey = GlobalKey();
  double? textHeight;

  calculateHeightOfText() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final RenderBox  box =
          textKey.currentContext?.findRenderObject() as RenderBox;

      if (box.size != null) {
        textHeight = box.size.height +200;
        print(box.size);
        notifyListeners();
      }else{
        textHeight=700;
        notifyListeners();
      }
    });

  }
}
