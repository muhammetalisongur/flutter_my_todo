import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:todo/password_forgot.dart';
import 'package:todo/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
  bool _isVisibility = true;

  bool isAnimation = false;

  void _changeVisibility() {
    setState(() {
      _isVisibility = !_isVisibility;
    });
  }

  void changeAnimation() {
    setState(() {
      isAnimation = !isAnimation;
      LoadingAnimationWidget.discreteCircle(color: Colors.white, size: 50);
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
            children: const [Icon(Icons.account_circle_outlined), Text("Login")]),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
            const Padding(padding: EdgeInsets.only(top: 10)),
            TextField(
              maxLength: 20,
              obscureText: _isVisibility,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: const Icon(Icons.password_outlined),
                  border: const OutlineInputBorder(),
                  labelText: 'Şifre',
                  suffixIcon: IconButton(
                    onPressed: _changeVisibility,
                    icon: AnimatedCrossFade(
                        firstChild: const Icon(Icons.visibility_outlined),
                        secondChild: const Icon(Icons.visibility_off_outlined),
                        crossFadeState: _isVisibility ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                        duration: const Duration(seconds: 1)),
                  )),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              onPressed: () {},
              child: const Text("Giriş Yap"),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.purple,
                        textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => const PasswordForgot()));
                      },
                      child: const Text("Şifremi Unuttum"),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.purple,
                        textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Register()));
                      },
                      child: const Text("Kayıt Ol"),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
