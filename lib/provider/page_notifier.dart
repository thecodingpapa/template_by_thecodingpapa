import 'package:flutter/cupertino.dart';
import 'package:template_by_thecodingpapa/pages/auth_page.dart';

class PageNotifier extends ChangeNotifier {
  String _currentPage = AuthPage.pageName;

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
