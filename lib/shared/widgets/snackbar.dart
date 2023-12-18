import 'package:flutter/material.dart';

class CustomSnackbar {
  static void show({
    isError = false,
    required BuildContext context,
    required String message,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: isError ? Colors.red : Colors.green,
        behavior: SnackBarBehavior.floating,
        // margin: const EdgeInsets.all(10.0),
      ),
    );
  }
}
