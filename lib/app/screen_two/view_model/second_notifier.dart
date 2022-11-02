import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondNotifier with ChangeNotifier {
  Map map = {};
  changeColor(index) {
    map.addEntries({"$index": index}.entries);

    notifyListeners();
  }
}
