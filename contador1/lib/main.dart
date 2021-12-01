import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "contador de pessoas",
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String _infoText = "Pode Entrar!";

  void _changePeople(int delta) {
    setState(() {
      _people += delta;
      if (_people < 0) {
        _infoText = "Mundo perdido!";
      } else if (_people <= 20) {
        _infoText = "Pode entrar!";
      } else {
        _infoText = "Lotado!";
      }
      ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Pessoas $_people',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.all(10.0),
                child: FlatButton(
                  child: Text(
                    "+1",
                    style: TextStyle(fontSize: 38.0, color: Colors.blue),
                  ),
                  onPressed: () {
                    _changePeople(1);
                  },
                )),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: FlatButton(
                    child: Text(
                      "-1",
                      style: TextStyle(fontSize: 38.0, color: Colors.blue),
                    ),
                    onPressed: () {
                      _changePeople(-1);
                    })),
          ],
        )
      ],
    );
  }
}
