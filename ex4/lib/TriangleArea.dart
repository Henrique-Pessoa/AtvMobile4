import 'package:flutter/material.dart';
import 'package:ex4/trapezeArea.dart';

class Triangle extends StatefulWidget {
  const Triangle({super.key});

  @override
  State<Triangle> createState() => _TriangleState();
}

class _TriangleState extends State<Triangle> {
  final TextEditingController _base = TextEditingController();
  final TextEditingController _height = TextEditingController();

  double _total = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cacular area do triangulo"),
      ),
     body: Column(
      children: [
             Padding(
              padding: const EdgeInsets.all(5),
              child: 
              TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Base to triangulo"),
                style: const TextStyle(fontSize: 20),
                controller:_base ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: 
              TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Altura do triangulo"),
                style: const TextStyle(fontSize: 20),
                controller:_height ,
              ),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                _total = (double.parse(_base.text) * double.parse(_height.text))/2;
              });
            }, child: const Text("Calcular")),
            Text("Base do triangulo:"+_total.toStringAsFixed(2)),
            ElevatedButton(onPressed: () {Navigator.push(  context,  MaterialPageRoute(builder: (context) => const Trapeze()),);},child: Text("Calcular are do trapezio"),)
      ],
     ),

      );
    
  }
}