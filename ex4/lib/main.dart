import 'package:flutter/material.dart';
import 'package:ex4/TriangleArea.dart';

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _error = TextEditingController();
  final TextEditingController _password = TextEditingController();

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
            Padding(
              padding: const EdgeInsets.all(5),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Digite seu nome"),
                style: const TextStyle(fontSize: 20),
                controller: _name,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Senha"),
                style: const TextStyle(fontSize: 20),
                controller: _password,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                      if(_name.text == "Henrique" && _password.text == "123"){
                          Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context) => const Triangle()),(Route<dynamic> route) => false,
);
                      }else{
                        _error.text = "Usuario Invalido";
                      }
                  });
                },
                child: const Text("Enviar")),
          Text(_error.text)
          ],
        ),
      ),
    );
  }
}