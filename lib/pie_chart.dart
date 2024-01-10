import 'dart:math';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChart extends StatelessWidget {
  const PieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      legend: const Legend(
        isVisible: true,
        position: LegendPosition.bottom,
      ),
      series: [
        DoughnutSeries<PieChartData, String>(
          dataLabelMapper: (entry, _) => entry.id,
          dataLabelSettings: DataLabelSettings(
            isVisible: true,
            margin: const EdgeInsets.all(4),
            borderRadius: 6,
            labelPosition: ChartDataLabelPosition.outside,
            useSeriesColor: true,
            builder: (data, point, series, pointIndex, seriesIndex) {
              return Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: point.color ?? Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  point.x.toString(),
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              );
            },
          ),
          animationDuration: 500,
          pointColorMapper: (datum, index) => Theme.of(context).colorScheme.secondary,
          strokeWidth: 1.0,
          groupMode: CircularChartGroupMode.point,
          groupTo: 10,
          strokeColor: Theme.of(context).colorScheme.surface,
          dataSource: pieData,
          xValueMapper: (entry, _) => entry.id,
          yValueMapper: (entry, _) => entry.value.abs(),
          radius: '60%',
          innerRadius: '70%',
        ),
      ],
    );
  }
}

class PieChartData {
  final String id;
  final double value;

  const PieChartData({
    required this.id,
    required this.value,
  });
}

final pieData = List.generate(
  10,
  (index) => PieChartData(
    id: '🍕 | A long name from index ${index.toString()} | 🚀',
    value: Random().nextInt(1000).toDouble(),
  ),
);
