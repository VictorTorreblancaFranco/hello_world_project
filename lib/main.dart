import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World Demo',
      debugShowCheckedModeBanner: false, // Desactiva el banner de debug
      theme: ThemeData(
        primarySwatch: Colors.green, // Color primario
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green, // Color del AppBar
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.orange, // Color del FAB
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hello World!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Color del texto
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Bienvenido a Flutter!',
              style: TextStyle(
                fontSize: 18, // Tamaño del texto
                color: Colors.black, // Color del texto
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Acción del FAB (puedes agregar alguna funcionalidad aquí)
        },
        tooltip: 'Presiona',
        child: const Icon(Icons.add),
      ),
    );
  }
}
