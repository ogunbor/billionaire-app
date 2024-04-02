import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void aFunction() {
    print("Button is pressed");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Billionaire App"),
          ),
          body: Container(
              padding: const EdgeInsets.all(20),
              color: Colors.blueGrey[700],
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Balance Part"),
                  ElevatedButton(
                      onPressed: aFunction, child: const Text("Click here"))
                ],
              ))),
    );
  }
}
