import 'package:flutter/material.dart';
import 'package:workshop/model/user.dart';

class UserProvider with ChangeNotifier {
  var user = "";

  void setUser(User name) {
    user = name.user;
    notifyListeners();
  }
}
