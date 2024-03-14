import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _gasolinaController = TextEditingController();
  final TextEditingController _alcoolController = TextEditingController();
  double _resultado = 0.0;
  bool _mostrarResultado = false;

  void calcular() {
    double valorGasolina = double.tryParse(_gasolinaController.text) ?? 0.0;
    double valorAlcool = double.tryParse(_alcoolController.text) ?? 0.0;

    setState(() {
      _resultado = valorAlcool / valorGasolina * 100;
      _mostrarResultado = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gasolina x Alcool"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Gasolina x Alcool"),
            const SizedBox(
              height: 200, // Altura desejada da imagem
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: _gasolinaController,
              decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                border: OutlineInputBorder(),
                labelText: "Valor da gasolina",
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: _alcoolController,
              decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                border: OutlineInputBorder(),
                labelText: "Valor do alcool",
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const SizedBox(
              height: 16,
            ),
            OutlinedButton(
              onPressed: calcular,
              child: const Text("Calcular"),
            ),
            Text("Resultado: $_resultado"),
            const SizedBox(
              height: 16,
            ),
            if (_mostrarResultado)
              _resultado >= 70
                  ? const Text("Abastecer com alcool")
                  : const Text("Abastecer com gasolina"),
          ],
        ),
      ),
    );
  }
}
