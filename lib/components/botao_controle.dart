import 'package:flutter/material.dart';

class BotaoControle extends StatelessWidget {
  final void Function()? click;

  final String texto;
  final IconData icone;
  // final onPressed;
  const BotaoControle({
    Key? key,
    required this.texto,
    required this.icone,
    this.click,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.black,
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 15,
          ),
          textStyle: TextStyle(fontSize: 20.0)),
      onPressed: click,
      child: Row(
        children: [
          Icon(
            icone,
            size: 30,
          ),
          SizedBox(width: 10),
          Text(texto)
        ],
      ),
    );
  }
}
