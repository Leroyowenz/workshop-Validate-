import 'package:flutter/material.dart';

class HttpService {
  static const String base_url = "http://emmi-softwaretract.onlline/api/";

  static const String register = "${base_url} + register";
  static const String login = "${base_url} + login";

  void showMessage(String message, BuildContext context) {
    var snackbar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
}
