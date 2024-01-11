
import 'package:flutter/material.dart';

class PantallaB extends StatelessWidget {
  final int counter;

  const PantallaB({required this.counter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla B'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Contador en Pantalla B: $counter'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, counter + 1);
              },
              child: const Text('Incrementar en Pantalla B'),
            ),
          ],
        ),
      ),
    );
  }
}