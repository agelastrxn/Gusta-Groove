import 'package:restaurant/shared/additions/export.dart';

class CustomAlertDialog {
  static void show({
    required BuildContext context,
    required String title,
    required String message,
    VoidCallback? onConfirm,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              onPressed: () => GO.back(),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: onConfirm ?? () {},
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
