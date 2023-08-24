import 'package:flutter/material.dart';

class LogOut with ChangeNotifier {
  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  void login() {
    // Implement your login logic here
    // For example, you can update the _isLoggedIn flag and notify listeners
    _isLoggedIn = true;
    notifyListeners();
  }

  void logout() {
    // Implement your logout logic here
    // For example, you can update the _isLoggedIn flag and notify listeners
    _isLoggedIn = false;
    notifyListeners();
  }
}
