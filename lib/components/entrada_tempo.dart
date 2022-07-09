import 'package:flutter/material.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;

  const EntradaTempo({
    Key? key,
    required this.titulo,
    required this.valor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          this.titulo,
          style: TextStyle(fontSize: 20),
        ),
        Row(
          children: [
            FloatingActionButton(
              onPressed: () {},
              mini: true,
              backgroundColor: Colors.red,
              child: Icon(Icons.arrow_downward),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('${this.valor} min'),
            ),
            FloatingActionButton(
              onPressed: () {},
              mini: true,
              backgroundColor: Colors.red,
              child: Icon(Icons.arrow_upward),
            ),
          ],
        ),
      ],
    );
  }
}
