import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SLA Connect',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Controllers para os campos de texto
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  // Função de validação simples
  void _login() {
    String email = _emailController.text;
    String password = _passwordController.text;
    if (email.isEmpty || password.isEmpty) {
      // Exibe um alerta se algum campo estiver vazio
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Por favor, preencha todos os campos.')),
      );
    } else {
      // Aqui você pode fazer a lógica de login, como enviar os dados para um servidor
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Login bem-sucedido!')));
      // Limpa os campos após o login bem-sucedido
      _emailController.clear();
      _passwordController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SLA CONNECT')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Campo de e-mail
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'RM',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            // Campo de senha
            TextField(
              controller: _passwordController,
              obscureText: true, // Torna o texto da senha oculto
              decoration: InputDecoration(
                labelText: 'Senha',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            // Botão de login
            ElevatedButton(
              onPressed: _login,
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
