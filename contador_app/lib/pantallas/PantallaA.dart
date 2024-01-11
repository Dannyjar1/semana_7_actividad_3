import 'package:flutter/material.dart';

class PantallaA extends StatelessWidget {
  final int counter;

  const PantallaA({required this.counter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla A'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Contador en Pantalla A: $counter'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, counter + 1);
              },
              child: const Text('Incrementar en Pantalla A'),
            ),
          ],
        ),
      ),
    );
  }
}