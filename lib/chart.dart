import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class Chart extends StatelessWidget {

  const Chart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return SfCartesianChart(
        plotAreaBorderWidth: 0,
        // ignore: prefer_const_constructors
        primaryXAxis: CategoryAxis(
          maximumLabels: 100,
          majorGridLines: const MajorGridLines(width: 0),
          majorTickLines: const MajorTickLines(width: 0),
          autoScrollingDelta: 10,
          autoScrollingMode: AutoScrollingMode.end,
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
          ColumnSeries(
            animationDuration: 750,
            width: 0.5,
            name: 'Category',
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            dataSource: data,
            xValueMapper: ((entry, _) => entry.id),
            yValueMapper: ((entry, _) => entry.value),
            color: Colors.green,
          ),
        ],
      );
    });
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

const data = <ChartData>[
  ChartData(id: 'A', value: 10),
  ChartData(id: 'B', value: 20),
  ChartData(id: 'C', value: 30),
  ChartData(id: 'D', value: 40),
  ChartData(id: 'E', value: 50),
  ChartData(id: 'F', value: 60),
  ChartData(id: 'G', value: 70),
  ChartData(id: 'H', value: 80),
  ChartData(id: 'I', value: 90),
  ChartData(id: 'J', value: 100),
  ChartData(id: 'K', value: 110),
  ChartData(id: 'L', value: 120),
  ChartData(id: 'M', value: 130),
  ChartData(id: 'N', value: 140),
  ChartData(id: 'O', value: 150),
  ChartData(id: 'P', value: 160),
  ChartData(id: 'Q', value: 170),
  ChartData(id: 'R', value: 180),
  ChartData(id: 'S', value: 190),
  ChartData(id: 'T', value: 200),
  ChartData(id: 'U', value: 210),
  ChartData(id: 'V', value: 220),
  ChartData(id: 'W', value: 230),
  ChartData(id: 'X', value: 240),
  ChartData(id: 'Y', value: 250),
  ChartData(id: 'Z', value: 260),
];
