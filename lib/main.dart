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
      appBar: AppBar(title: Text("Meu Primeiro App")),
      body: Container(
        color: const Color.fromARGB(255, 8, 20, 59), // Fundo azul aqui
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo_slaconnect.png", height: 100),
            SizedBox(height: 20),
            Text(
              mensagem,
              style: TextStyle(fontSize: 24, color: Colors.white), // Texto branco para contraste
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: mudarMensagem,
              child: Text("Clique aqui"),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.thumb_up, color: Colors.red),
                SizedBox(width: 10),
                Text("Curta e compartilhe!", style: TextStyle(fontSize: 16, color: Colors.white)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
