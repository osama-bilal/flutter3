import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'transform.rotate container',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Container'),
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        leading: const Icon(Icons.arrow_back),
        
        actions: const [Icon(Icons.info, ) , Icon(Icons.more_vert)],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          color: Colors.blue,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          height: 100,
          child: const Text(
            "I am container",
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width,
          transform: Matrix4.rotationZ(0.2),
          alignment: Alignment.center,
          color: Colors.blue,
          child: const Text(
            "hi, I am container but with transform property",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
        Container(
          transform: Matrix4.rotationZ(0.2),
          color: Colors.blue,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: const Text(
            "I'm also transformed container",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 70),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                color: Colors.blue,
                width: 150,
                height: 150,
              ),
              Container(
                color: Colors.yellow,
                width: 120,
                height: 120,
              ),
              Container(
                color: Colors.green,
                width: 90,
                height: 90,
              ),
              Container(
                color: Colors.red,
                width: 60,
                height: 60,
              ),
              Container(
                color: Colors.blue,
                width: 30,
                height: 30,
              )
            ],
          ),
        ),
      ]),
    );
  }
}
