import 'package:flutter/material.dart';

// Show OK/Cancel dialog
Future<bool> showConfirmDialog(BuildContext context, String message) async {
  var result = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Confirm"),
          content: Text(message),
          actions: [
            TextButton(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
            TextButton(
              child: const Text("OK"),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            )
          ],
        );
      });
  return result ?? false;
}
