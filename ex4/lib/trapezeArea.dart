import 'package:flutter/material.dart';

class Trapeze extends StatefulWidget {
  const Trapeze({super.key});

  @override
  State<Trapeze> createState() => _TrapezeState();
}

class _TrapezeState extends State<Trapeze> {
  final TextEditingController _a = TextEditingController();
  final TextEditingController _b = TextEditingController();
  final TextEditingController _height = TextEditingController();

  double _total = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cacular area do trapezio"),
      ),
     body: Column(
      children: [
             Padding(
              padding: const EdgeInsets.all(5),
              child: 
              TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "A"),
                style: const TextStyle(fontSize: 20),
                controller:_a ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: 
              TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "B"),
                style: const TextStyle(fontSize: 20),
                controller:_b ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: 
              TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Altura"),
                style: const TextStyle(fontSize: 20),
                controller:_height ,
              ),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                _total = (double.parse(_a.text) + double.parse(_b.text))/2*double.parse(_height.text);
              });
            }, child: const Text("Calcular")),
            Text("Base do triangulo:"+_total.toStringAsFixed(2)),
      ],
     ),

      );
    
  }
}