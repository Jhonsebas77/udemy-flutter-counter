import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  ContadorPage({Key key}) : super(key: key);

  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  int _conteo = 0;
  final TextStyle _buildTitleTextStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  final TextStyle _buildNumberTextStyle = TextStyle(
    fontSize: 15,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Contador',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Numero de clicks:',
              style: _buildTitleTextStyle,
            ),
            Text(
              '$_conteo',
              style: _buildNumberTextStyle,
            ),
          ],
        ),
      ),
      floatingActionButton: _buildButtons(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 20,
        ),
        FloatingActionButton(
          onPressed: _reset,
          backgroundColor: Colors.green,
          child: Icon(
            Icons.redo_outlined,
          ),
        ),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
          onPressed: _conteo <= 0 ? null : _remove,
          backgroundColor: _conteo <= 0 ? Colors.grey : Colors.green,
          child: Icon(
            Icons.remove,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        FloatingActionButton(
          onPressed: _add,
          backgroundColor: Colors.green,
          child: Icon(
            Icons.add,
          ),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }

  void _remove() => setState(() => _conteo--);

  void _add() => setState(() => _conteo++);

  void _reset() => setState(() => _conteo = 0);
}
