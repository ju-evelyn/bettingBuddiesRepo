import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  const Login({super.key, required this.title});

  final String title;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _inputText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Title(color: Colors.black, child: Text('LOGIN')),
            Text(
              _inputText,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                onChanged: (t) {
                  setState(() {
                    _inputText = t;
                  });
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'E-mail:',
                ),
                enabled: true,
                maxLength: 50,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                onChanged: (t) {},
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha:',
                ),
                enabled: true,
                maxLength: 50,
              ),
            ),
            Padding(
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(),
                  onPressed: () {
                    setState(() {
                      _inputText = 'Você está logado';
                    });
                  },
                  child: Text('ENTRAR'),
                )),
            Padding(
                padding: EdgeInsets.all(20),
                child: OutlinedButton(
                  style: ElevatedButton.styleFrom(),
                  onPressed: () {},
                  child: Text('Ir para a página de cadastro'),
                )),
          ],
        ),
      ),
    );
  }
}
