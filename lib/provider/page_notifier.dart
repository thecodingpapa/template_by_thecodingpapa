import 'package:flutter/cupertino.dart';

class PageNotifier extends ChangeNotifier {
  String _currentPage;

  String get curPage => _currentPage;

  void goToMain() {
    _currentPage = null;
    notifyListeners();
  }

  void showPage(String page) {
    _currentPage = page;
    notifyListeners();
  }
}
