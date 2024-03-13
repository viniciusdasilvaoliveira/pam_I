import 'package:flutter/material.dart';

void main() => runApp(const Aplicacao());

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Nome: Vinícius Oliveira"),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Meu série favorita é: "),
                Text("Prison Break"),
              ],
            ),
            Column(
              children: [
                Text("Minha comida favorita é: "),
                Text("Lasanha"),
              ],
            ),
            Row(
              children: [
                Text("2H3"),
                Text("Matão"),
                Text("2024"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
