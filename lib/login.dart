import 'package:flutter/material.dart';
import 'libs/lib_button.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 50.0, bottom: 100.0),
            ),
            LibButton(
              text: 'Login with Google',
              svgName: 'assets/google-brands.svg',
            ),
            LibButton(
              text: 'Login with Twitter',
              svgName: 'assets/twitter-brands.svg',
            ),
            LibButton(
              text: 'Login with Facebook',
              svgName: 'assets/facebook-brands.svg',
            ),
          ],
        ),
      ),
    );
  }
}
