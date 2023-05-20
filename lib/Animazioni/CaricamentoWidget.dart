import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class CaricamentoWidget extends StatefulWidget {
  @override
  _CaricamentoWidgetState createState() => _CaricamentoWidgetState();
}

class _CaricamentoWidgetState extends State<CaricamentoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.5),
      child: Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: FlareActor(
            'assets/animazioni/Caricamento.flr',
            alignment: Alignment.center,
            fit: BoxFit.contain,
            animation: 'Caricamento',
          ),
        ),
      ),
    );
  }
}
