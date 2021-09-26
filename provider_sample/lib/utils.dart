import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  final List<String> _usersList = [];
  List<String> get usersList => _usersList;

  follow(String user) {
    _usersList.add(user);
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  unFollow(String user) {
    _usersList.removeWhere((element) => element == user);
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }
}
