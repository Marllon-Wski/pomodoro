import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro/store/pomodoro_store.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;

  final void Function()? inc;
  final void Function()? dec;

  const EntradaTempo({
    Key? key,
    required this.titulo,
    required this.valor,
    required this.inc,
    required this.dec,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = GetIt.I.get<PomodotoStore>();

    return Column(
      children: [
        Text(
          this.titulo,
          style: TextStyle(fontSize: 20),
        ),
        Row(
          children: [
            FloatingActionButton(
              onPressed: dec,
              mini: true,
              backgroundColor:
                  store.estaTrabalhando() ? Colors.red : Colors.green,
              child: Icon(Icons.arrow_downward),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('${this.valor} min'),
            ),
            FloatingActionButton(
              onPressed: inc,
              mini: true,
              backgroundColor:
                  store.estaTrabalhando() ? Colors.red : Colors.green,
              child: Icon(Icons.arrow_upward),
            ),
          ],
        ),
      ],
    );
  }
}
