import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class HoverManagement with ChangeNotifier, DiagnosticableTreeMixin{
 bool isSkilledHover = false;
 int _selectedSkillsIndex = 0;

 int get selectedSkillsIndex => _selectedSkillsIndex;

  set selectedSkillsIndex(int value) {
    _selectedSkillsIndex = value;
    notifyListeners();
  }
  hoverFunc(bool hover){
    isSkilledHover = hover;
    notifyListeners();
  }
}