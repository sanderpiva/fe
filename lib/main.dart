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
        primarySwatch: Colors.blue,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Olá, Flutter!',
              style: TextStyle(fontSize: 24),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Este é um exemplo simples de layout usando widgets básicos do Flutter.',
                textAlign: TextAlign.center,
              ),
            ),

            // Adicionando um Stack com um FAB flutuante
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(20.0),
                  color: Colors.grey[200],
                  height: 200,
                  width: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(46.30), // Ajuste o valor para controlar o espaço
                    child: Text(
                      'Conteúdo',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}