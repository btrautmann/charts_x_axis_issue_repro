import 'package:flutter/material.dart';
import 'package:syncfusion_charts/chart.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: AspectRatio(
            aspectRatio: 1,
            child: Chart(),
          ),
        ),
      ),
    );
  }
}
