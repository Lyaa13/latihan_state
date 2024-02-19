import 'package:flutter/material.dart';

void main() {
  runApp(Preview());
}

class Preview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Kalkulator(),
      ),
    );
  }
}

class Kalkulator extends StatefulWidget{
  @override
  _KalkulatorState createState() => _KalkulatorState();
}

class _KalkulatorState extends State<Kalkulator>{
  TextEditingController _numberController = TextEditingController();
  TextEditingController _number2Controller = TextEditingController();

  double _hasil = 0.0;
  double _number1 = 0;
  double _number2 = 0;

  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text("Hasil : ${_hasil}"),
            Text("Number 1 : ${_number1}"),
            Text("Number 2 : ${_number2}"),
            TextField(
              controller: _numberController,
              onChanged: (value) {
                setState(() {
                  _number1 = double.parse(value);
                });
              },
              decoration: InputDecoration(
                labelText: 'Number 1'
              ),
            ),
             TextField(
              controller: _number2Controller,
              onChanged: (value) {
                setState(() {
                  _number2 = double.parse(value);
                });
              },
              decoration: InputDecoration(
                labelText: 'Number 2'
              ),
            ),
            ElevatedButton(onPressed: (){
                setState(() {
                  _hasil = _number1 + _number2;
                });
              },
               child : Text("Tambah")
              ) 
          ],
        ),
      ),
    );
  }
}