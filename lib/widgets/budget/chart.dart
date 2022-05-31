import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:zenbu/utilities/themeColors.dart';

List<Color> gradientColors = [ThemeColors.primary];

LineChartData mainData() {
  return LineChartData(
    gridData: FlGridData(
      show: true,
      drawVerticalLine: false,
      drawHorizontalLine: true,
      getDrawingHorizontalLine: (value) {
        return FlLine(
          color: const Color(0xff37434d),
          strokeWidth: 0.1,
        );
      },
      horizontalInterval: 1,
    ),
    titlesData: FlTitlesData(
      show: true,
      bottomTitles: AxisTitles(
        sideTitles: bottomTitles,
      ),
      leftTitles: AxisTitles(
        sideTitles: leftTitles,
      ),
    ),
    borderData: FlBorderData(
      show: false,
    ),
    minX: 0,
    maxX: 11,
    minY: 0,
    maxY: 6,
    lineBarsData: [
      LineChartBarData(
        spots: [
          FlSpot(0, 3),
          FlSpot(2.6, 2),
          FlSpot(4.9, 5),
          FlSpot(6.8, 3.1),
          FlSpot(8, 4),
          FlSpot(9.5, 3),
          FlSpot(11, 4),
        ],
        isCurved: true,
        color: ThemeColors.tertiary,
        barWidth: 3,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
      ),
    ],
  );
}

SideTitles get bottomTitles => SideTitles(
      showTitles: true,
      reservedSize: 32,
      interval: 1,
      getTitlesWidget: bottomTitleWidgets,
    );

Widget bottomTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    color: Color(0xff68737d),
    fontSize: 12,
  );

  Widget text;
  switch (value.toInt()) {
    case 2:
      text = Text("1", style: style);
      break;
    case 5:
      text = Text('11', style: style);
      break;
    case 8:
      text = Text('21', style: style);
      break;
    default:
      text = Text('', style: style);
      break;
  }

  return text;
}

SideTitles get leftTitles => SideTitles(
      showTitles: true,
      reservedSize: 28,
      interval: 1,
      getTitlesWidget: leftTitleWidgets,
    );

Widget leftTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    color: Color(0xff67727d),
    fontSize: 12,
  );

  Widget text;
  switch (value.toInt()) {
    case 1:
      text = Text("10k", style: style);
      break;
    case 3:
      text = Text('50k', style: style);
      break;
    case 5:
      text = Text('100k', style: style);
      break;
    default:
      text = Text('', style: style);
      break;
  }

  return text;
}
