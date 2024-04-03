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
      theme: ThemeData.dark(useMaterial3: true),
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
                  const Expanded(
                    flex: 9,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Bank Balance: "),
                        SizedBox(height: 20),
                        Text("0"),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red[700],
                            minimumSize: const Size(double.infinity, 0)),
                        onPressed: aFunction,
                        child: const Text("Add Money")),
                  )
                ],
              ))),
    );
  }
}
