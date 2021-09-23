import 'package:demo_sprints/Screens/home.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _name = new TextEditingController();
  TextEditingController _password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset("assets/flutter-logo.jpg"),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 30, 0),
              child: TextField(
                controller: _name,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 30, 0),
              child: TextField(
                controller: _password,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 30, 0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => HomePage(
                            name: _name.text, password: _password.text)),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  minimumSize: const Size(double.infinity, 40),
                  padding: const EdgeInsets.all(15.0),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            const Text(
              'Forgot password? Press here.',
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 30, 0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black12,
                    minimumSize: const Size(double.infinity, 40),
                    padding: const EdgeInsets.all(15.0),
                  ),
                  onPressed: null,
                  child: const Text(
                    'No account? Sign up',
                    style: TextStyle(color: Colors.black45, fontSize: 20),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
