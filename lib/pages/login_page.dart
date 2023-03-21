import 'package:flutter/material.dart';
import 'package:movie_n_chat/pages/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _idController,
              decoration: const InputDecoration(
                hintText: 'Enter your ID',
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              obscureText: true,
              controller: _passwordController,
              decoration: const InputDecoration(
                hintText: 'Enter your Password',
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                print('ID: ${_idController.text}');
                print('Password: ${_passwordController.text}');
                Navigator.push(context, MaterialPageRoute(builder: (builder) => const MainPage()));
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
