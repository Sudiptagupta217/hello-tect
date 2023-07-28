import 'package:flutter/foundation.dart';

class SwitchProvider extends ChangeNotifier {
  bool _isSwitched = false;

  bool get isSwitched => _isSwitched;

  set isSwitched(bool value) {
    _isSwitched = value;
    notifyListeners();
  }
}
