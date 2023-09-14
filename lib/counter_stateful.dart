import 'package:flutter/material.dart';

class CounterStateful extends StatefulWidget {
  const CounterStateful({super.key});

  @override
  State<CounterStateful> createState() => _CounterState();
}

class _CounterState extends State<CounterStateful> {
  int counter = 15;

  void increment() {
    counter++;
    setState(() {});
  }

  void decrement() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 15;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
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
      floatingActionButton: FloatingButtonGroup(
        incrementFn: increment,
        decrementFn: decrement,
        resetFn: reset,
      ),
    );
  }
}

class FloatingButtonGroup extends StatelessWidget {
  final Function incrementFn;
  final Function decrementFn;
  final Function resetFn;

  const FloatingButtonGroup(
      {super.key,
      required this.incrementFn,
      required this.decrementFn,
      required this.resetFn});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <FloatingActionButton>[
        FloatingActionButton(
          child: const Icon(Icons.minimize_outlined),
          onPressed: () => decrementFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.restart_alt),
          onPressed: () => resetFn(),
        ),
        FloatingActionButton(
            child: const Icon(Icons.add), onPressed: () => incrementFn())
      ],
    );
  }
}
