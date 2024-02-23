import 'package:flutter/material.dart';
import 'package:syncfusion_charts/chart.dart';
import 'package:syncfusion_charts/line_chart.dart';
import 'package:syncfusion_charts/pie_chart.dart';

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
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 100),
                // AspectRatio(
                //   aspectRatio: 1,
                //   child: PieChart(),
                // ),
                SizedBox(height: 100),
                AspectRatio(
                  aspectRatio: 1,
                  child: Chart(),
                ),
                SizedBox(height: 100),
                AspectRatio(
                  aspectRatio: 1,
                  child: LineChart(),
                ),
                SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
