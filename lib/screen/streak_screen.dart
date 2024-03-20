import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:urban_culture_assessment/resources/app_colors.dart';

class StreakScreen extends StatelessWidget {
  const StreakScreen({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            'Streaks',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Today\'s Goal: 3 streak days',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.peach,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Streak Days',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500,),
                      ),
                      Text(
                        '2',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700,),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Daily Streak',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  '2',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Last 30 Days',
                        style: TextStyle(color: AppColors.cherry, fontSize: 16),
                      ),
                      TextSpan(
                        text: ' +100%',
                        style: TextStyle(
                            color: AppColors.lightGreen, fontSize: 16,),
                      ),
                    ],
                  ),
                ),
                SfCartesianChart(
                  primaryYAxis: CategoryAxis(
                    isVisible: false,
                    majorGridLines: MajorGridLines(width: 0),
                    axisLine: AxisLine(width: 0),
                  ),
                  primaryXAxis: CategoryAxis(
                    majorGridLines: MajorGridLines(width: 0),
                    axisLine: AxisLine(width: 0),
                  ),
                  series: _getSplineTypesSeries(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    'Keep it up! You\'re on a roll.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 12),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.peach),
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: AppColors.offBlack,
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: AppColors.peach,
                  thickness: 2,
                ),
              ],
            ),
          ),
        ),
      );

  /// Returns the list of chart series which need to render on the spline chart.
  List<SplineSeries<_ChartData, String>> _getSplineTypesSeries() =>
      <SplineSeries<_ChartData, String>>[
        SplineSeries<_ChartData, String>(
          color: AppColors.cherry,
          width: 4.5,
          dataSource: <_ChartData>[
            _ChartData('1D', 5),
            _ChartData('1W', 2),
            _ChartData('1M', 10),
            _ChartData('3M', 6),
            _ChartData('1Y', 12),
          ],
          xValueMapper: (final _ChartData sales, final _) => sales.x,
          yValueMapper: (final _ChartData sales, final _) => sales.y,
        ),
      ];
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}
