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

// StatefulWidget: permite mudar o estado (texto) - (Keeping it for now, though state is not directly used for the new buttons' text)
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // String mensagem = "Olá, Flutter!"; // This message is no longer displayed directly

  void mudarMensagem() {
    // This function is still tied to the "Cadastrar-se" button for now,
    // but its effect on 'mensagem' won't be visible on screen
    // unless you reintroduce a Text widget that uses 'mensagem'.
    setState(() {
      // mensagem = "Você clicou no botão!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SLA CONNECT")),
      body: Container(
        color: const Color.fromARGB(255, 9, 22, 65), // Fundo azul aqui
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo_slaconnect.png", height: 350),
            const SizedBox(height: 50), // Space below the logo

            // NEW: LOGAR Button
            Container(
              width: double.infinity, // Make button take full width
              height: 40, // Set button height
              child: ElevatedButton(
                onPressed: () {
                  print("Logar button pressed!");
                  // Add your navigation or login logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 39, 58, 122), // Dark blue background
                  foregroundColor: Colors.white, // White text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Rounded corners
                  ),
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic, // Italic text as in previous examples
                  ),
                ),
                child: const Text("Logar"),
              ),
            ),

            const SizedBox(height: 20), // Space between LOGAR and Cadastrar-se buttons

            // Existing Cadastrar-se Button (with updated styling)
            Container(
              width: double.infinity, // Make button take full width
              height: 40, // Set button height
              child: ElevatedButton(
                onPressed: mudarMensagem, // This still calls mudarMensagem, but its effect is now internal
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // White background
                  foregroundColor: const Color.fromARGB(255, 9, 22, 66), // Dark blue text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Rounded corners
                  ),
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic, // Italic text
                  ),
                ),
                child: const Text("Cadastrar-se"),
              ),
            ),

            const SizedBox(height: 40), // Space after the buttons
            // The Row is now empty, but you can add back elements if needed.
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // Children for this Row are now empty based on your provided code
            ),
          ],
        ),
      ),
    );
  }
}