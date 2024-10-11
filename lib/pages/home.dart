import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _num1 = TextEditingController();
  TextEditingController _num2 = TextEditingController();
  TextEditingController _resultado = TextEditingController();

  void sumar() {
    int num1 = int.parse(_num1.text);
    int num2 = int.parse(_num2.text);
    int suma = num1 + num2;
    _resultado.text = suma.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Widget'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _num1,
                decoration: const InputDecoration(
                  labelText: 'Número 1',
                ),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _num2,
                decoration: const InputDecoration(
                  labelText: 'Número 2',
                ),
                keyboardType: TextInputType.number,
              ),
              ElevatedButton(
                onPressed: sumar,
                child: const Text('Sumar'),
              ),
              TextField(
                controller: _resultado,
                decoration: const InputDecoration(
                  labelText: 'Resultado',
                ),
              ),
            ],
          ),
        ));
  }
}
