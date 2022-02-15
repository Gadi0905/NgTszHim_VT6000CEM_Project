import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartScreen extends StatelessWidget {
  const ChartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<_TempData> data = [
      _TempData('00:00', 25),
      _TempData('02:00', 24),
      _TempData('04:00', 15),
      _TempData('06:00', 14),
      _TempData('08:00', 14),
      _TempData('10:00', 13),
      _TempData('12:00', 18),
      _TempData('14:00', 22),
      _TempData('16:00', 25),
      _TempData('18:00', 18),
      _TempData('20:00', 22),
      _TempData('22:00', 25),
      _TempData('24:00', 23),
    ];

    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.4,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 10,
          child: SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            title: ChartTitle(text: 'Temperature List'),
            legend: Legend(isVisible: true),
            tooltipBehavior: TooltipBehavior(enable: true),
            series: <ChartSeries<_TempData, String>>[
              LineSeries<_TempData, String>(
                dataSource: data,
                xValueMapper: (_TempData sales, _) => sales.hour,
                yValueMapper: (_TempData sales, _) => sales.temp,
                name: 'Temp',
                dataLabelSettings: const DataLabelSettings(isVisible: true),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _TempData {
  _TempData(this.hour, this.temp);

  final String hour;
  final double temp;
}
