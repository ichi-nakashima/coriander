import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String ichinakaText = 'ichinaka';

  void changeIchinakaText() {
    ichinakaText = 'ichinakaかっこいい!!!';
    notifyListeners();
  }
}
