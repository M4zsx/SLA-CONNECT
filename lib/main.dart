import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Widget raiz
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo Flutter',
      home: HomeScreen(),
    );
  }
}

// StatefulWidget: permite mudar o estado (texto)
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String mensagem = "Olá, Flutter!";

  void mudarMensagem() {
    setState(() {
      mensagem = "Você clicou no botão!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SLA CONNECT")),
      body: Container(
        color: const Color.fromARGB(255, 9, 22, 66), // Fundo azul aqui
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo_slaconnect.png", height: 350),
            SizedBox(height: 60),
            
            Text(
              mensagem,
              style: TextStyle(fontSize: 24, color: Colors.white), // Texto branco para contraste
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: mudarMensagem,
              child: Text("Cadastrar-se"),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            )
          ],
        ),
      ),
    );
  }
}
