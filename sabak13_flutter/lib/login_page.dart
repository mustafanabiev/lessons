import 'package:flutter/material.dart';
import 'package:sabak13_flutter/card_page.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // // public
  // String appBarText = 'LoginPage';
  // // private
  // String _appBarText = 'LoginPage';
  String name = '';
  String kesip = '';
  String number = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (String value) {
                name = value;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Name жазуу',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              onChanged: (String value) {
                kesip = value;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Кесибин жазуу',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              onChanged: (String value) {
                number = value;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Phone number жазуу',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              onChanged: (String value) {
                email = value;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                hintText: 'Email жазуу',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              onChanged: (String value) {
                password = value;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password жазуу',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 150,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  if (email == '' && password == '') {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Логин жана Пароль жазыныз'),
                      ),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CardPage(
                          name: name,
                          kesip: kesip,
                          number: number,
                          email: email,
                        ),
                      ),
                    );
                  }
                },
                child: const Text(
                  'Send',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
