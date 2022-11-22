import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:todo/alert.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> with TickerProviderStateMixin {
  var _isVisible = true;

  void _changeVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
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
        elevation: 10,
        centerTitle: true,
        title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [Icon(Icons.account_circle_outlined), Text("Register")]),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextField(
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.account_box_outlined),
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(3),
            ),
            const TextField(
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.account_box_outlined),
                border: OutlineInputBorder(),
                labelText: 'Surname',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(3),
            ),
            const TextField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(3),
            ),
            TextField(
              maxLength: 20,
              obscureText: _isVisible,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixIcon: const Icon(Icons.password_outlined),
                border: const OutlineInputBorder(),
                labelText: 'Password',
                suffixIcon: IconButton(
                  onPressed: _changeVisibility,
                  icon: AnimatedCrossFade(
                      firstChild: const Icon(Icons.visibility_outlined),
                      secondChild: const Icon(Icons.visibility_off_outlined),
                      crossFadeState: _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                      duration: const Duration(seconds: 1)),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                DialogHelpers.showMyDialog(context);
              },
              child: const Text("Kayıt Ol"),
            )
          ],
        ),
      ),
    );
  }
}
