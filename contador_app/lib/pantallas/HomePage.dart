
import 'package:contador_app/pantallas/PantallaA.dart';
import 'package:contador_app/pantallas/PantallaB.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 1;


  void _resetCounter() {
    setState(() {
      _counter = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Principal'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _resetCounter,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Contador: $_counter'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PantallaA(counter: _counter),
                  ),
                ).then((value) {
                  if (value != null) {
                    setState(() {
                      _counter = value;
                    });
                  }
                });
              },
              child: const Text('Ir a Pantalla A'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PantallaB(counter: _counter),
                  ),
                ).then((value) {
                  if (value != null) {
                    setState(() {
                      _counter = value;
                    });
                  }
                });
              },
              child: const Text('Ir a Pantalla B'),
            ),
          ],
        ),
      ),
    );
  }
}
