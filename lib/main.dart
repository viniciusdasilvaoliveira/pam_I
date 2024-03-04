import 'package:flutter/material.dart';

void main() => runApp(const Aplicacao());

// classe aplicacao, responsável por gerenciar todo o nosso app.
class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    /*
    MaterialApp é responsável por gerenciar e estabelecer padrões 
    Para todas as telas do app. Nele temos:
    Configuração de telas
    estilos a serem aplicativo na tela baseada no Material (materia.io)
  */
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const HomePage(),
    );
  }
}

// classe que representa a tela do aplicativo com todo seu layout
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold -> Ele tem uma estrutura de uma tela. Ele sabe como por tamanho e entre outos {ELE É A BASE!}

    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Text(
                "Resumo do Pedido",
                style: textTheme.headlineLarge,
              ),
            ),

            Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: const Text("1x")),
                const Expanded(child: Text("Banana")),
                const Text("2, 80"),
              ],
            ),

            Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: const Text("2x")),
                const Expanded(child: Text("Morango")),
                const Text("8, 90"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
