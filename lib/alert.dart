import 'package:flutter/material.dart';

class DialogHelpers {
  DialogHelpers._();

  static Future<void> showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Doğrulama Maili Gönderildi'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('E-Postanızı Kontrol Edin'),
                // Text(''),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Tamam'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Tekrar Yolla'),
              onPressed: () {
                Navigator.of(context).pop();
                // User user = User("email", "name", "surname", "password");
              },
            ),
          ],
        );
      },
    );
  }
}
