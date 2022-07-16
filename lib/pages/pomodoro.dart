import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro/components/cronometro.dart';
import 'package:pomodoro/components/entrada_tempo.dart';

import '../store/pomodoro_store.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = GetIt.I.get<PomodotoStore>();

    return Observer(
      builder: (_) => Scaffold(
        appBar: AppBar(
          backgroundColor: store.estaTrabalhando() ? Colors.red : Colors.green,
          centerTitle: true,
          title: Text('Pomodoro'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Cronometro()),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  EntradaTempo(
                    titulo: 'Trabalho',
                    valor: store.tempoTrabalho,
                    inc: store.estaTrabalhando() && store.iniciado
                        ? null
                        : store.incrementarTempoTrabalho,
                    dec: store.estaTrabalhando() && store.iniciado
                        ? null
                        : store.decrementarTempoTrabalho,
                  ),
                  EntradaTempo(
                    titulo: 'Descanço',
                    valor: store.tempoDescanso,
                    inc: !store.estaTrabalhando() && store.iniciado
                        ? null
                        : store.incrementarTempoDescanso,
                    dec: !store.estaTrabalhando() && store.iniciado
                        ? null
                        : store.decrementarTempoDescanso,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
