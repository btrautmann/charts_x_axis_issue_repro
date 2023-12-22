import 'dart:math';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineChart extends StatelessWidget {
  const LineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      legend: const Legend(
        isVisible: true,
        position: LegendPosition.bottom,
      ),
      // ignore: prefer_const_constructors
      primaryXAxis: CategoryAxis(
        maximumLabels: 2,
        majorGridLines: const MajorGridLines(width: 0),
        majorTickLines: const MajorTickLines(width: 0),
        isVisible: true,
      ),
      // ignore: prefer_const_constructors
      primaryYAxis: NumericAxis(
        majorTickLines: const MajorTickLines(width: 0),
        isVisible: true,
        anchorRangeToVisiblePoints: false,
      ),
      zoomPanBehavior: ZoomPanBehavior(
        enablePinching: true,
        enablePanning: true,
        zoomMode: ZoomMode.x,
      ),
      series: <XyDataSeries<ChartData, String>>[
        LineSeries<ChartData, String>(
          name: 'Income',
          animationDuration: 750,
          width: 4,
          dataSource: incomeData,
          xValueMapper: (entry, _) => entry.id,
          yValueMapper: (entry, _) => entry.value,
          color: Colors.blue,
        ),
        LineSeries<ChartData, String>(
          name: 'Expense',
          animationDuration: 750,
          width: 2,
          dataSource: expenseData,
          xValueMapper: (entry, _) => entry.id,
          yValueMapper: (entry, _) => entry.value * -1,
          color: Colors.green,
        ),
      ],
    );
  }
}

class ChartData {
  final String id;
  final double value;

  const ChartData({
    required this.id,
    required this.value,
  });
}

final incomeData = List.generate(
  100,
  (index) => ChartData(
    id: index.toString(),
    value: Random().nextInt(1000).toDouble(),
  ),
);

final expenseData = List.generate(
  100,
  (index) => ChartData(
    id: index.toString(),
    value: Random().nextInt(1000).toDouble(),
  ),
);
