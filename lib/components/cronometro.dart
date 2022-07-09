import 'package:flutter/material.dart';
import 'package:pomodoro/components/botao_controle.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hora de Trabalhar',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Text(
            '25:00',
            style: TextStyle(
              fontSize: 90,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Iniciar
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: BotaoControle(
                  texto: 'Iniciar',
                  icone: Icons.play_arrow,
                ),
              ),
              // // Parar
              // Padding(
              // padding: const EdgeInsets.only(right: 8.0),
              //   child: BotaoControle(
              //     texto: 'Parar',
              //     icone: Icons.stop,
              //   ),
              // ),
              // Reiniciar
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: BotaoControle(
                  texto: 'Reiniciar',
                  icone: Icons.refresh,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
