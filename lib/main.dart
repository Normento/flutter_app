import 'package:flutter/material.dart';
import 'package:flutter_application_1/acceuil.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tresors Royaux',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      debugShowCheckedModeBanner: false,
      home: const Acceuil(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Likez"),
          centerTitle: true,
          actions: const [
            Icon(Icons.search),
          ],
        ),
        drawer: const Drawer(),
        body: Center(child: Row()));
  }
}
