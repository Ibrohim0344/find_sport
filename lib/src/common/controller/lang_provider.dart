import 'package:flutter/material.dart';

class LangProvider extends ChangeNotifier {
  String _dropDownValue = "uz";

  String get dropDownValue => _dropDownValue;

  void changeLocale(String? lang) {
    _dropDownValue = lang ?? "uz";
    notifyListeners();
  }
}
