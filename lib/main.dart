import 'package:counter_application/counter_stateful.dart';
import 'package:counter_application/counter_stateless.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        //home: CounterStateless(),
        home: CounterStateful());
  }
}
