import 'package:flutter/material.dart';

class CounterStateless extends StatelessWidget {
  const CounterStateless({super.key});

  @override
  Widget build(BuildContext context) {
    int counter = 15;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("CounterStaless"),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Text>[
            const Text(
              "Contador esta en...",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "$counter",
              style: const TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          print("Valor de counter: $counter");
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
