// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:todo/alert.dart';

class PasswordForgot extends StatefulWidget {
  const PasswordForgot({super.key});

  @override
  State<PasswordForgot> createState() => _PasswordForgotState();
}

class _PasswordForgotState extends State<PasswordForgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoadingAnimationWidget.discreteCircle(color: Colors.white, size: 50),
              ],
            ),
          )
        ],
        backgroundColor: Colors.purple,
        elevation: 10,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.wifi_protected_setup_outlined),
            Padding(
              padding: EdgeInsets.only(left: 1),
            ),
            Text("Şifre Yenileme"),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email",
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              onPressed: () {
                DialogHelpers.showMyDialog(context);
              },
              child: const Text("Gönder"),
            )
          ],
        ),
      ),
    );
  }
}
