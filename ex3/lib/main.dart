import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
enum SingingCharacter { Masculino, Feminino,Solteiro,Casado}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  SingingCharacter? _character = SingingCharacter.Masculino;
  SingingCharacter? _marital  = SingingCharacter.Masculino;

  String _genderValue = "Masculino";
  String _maritialValue = "Solteiro";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
          ListTile(
          title: const Text('Masculino'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.Masculino,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
                if (value != null) {
                _genderValue = value.name;
                }
              });
            },
          ),
        ),
         ListTile(
          title: const Text('Feminino'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.Feminino,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
                if (value != null) {
                _genderValue = value.name;
                }
              });
            },
          ),
        ), 
        Text("Genero selecionado: $_genderValue"),
        ListTile(
          title: const Text('Solteiro'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.Solteiro,
            groupValue: _marital,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _marital = value;
                if (value != null) {
                _maritialValue = value.name;
                }
              });
            },
          ),
        ),ListTile(
          title: const Text('Casado'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.Casado,
            groupValue: _marital,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _marital = value;
                if (value != null) {
                _maritialValue = value.name;
                }
              });
            },
          ),
        ),
        Text("Estado civil: $_maritialValue")
          ],
        ),
      ),
    );
  }
}
