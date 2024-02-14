import 'dart:math';

/// 计算圆形面积,
/// 圆形半径 [radius]
/// 计算结果保留 [fractionDigits] 位有效数字
double areaOfCircle(double radius, {int fractionDigits = 2}) {
  double result = pi * sqrt(radius);
  String value = result.toStringAsFixed(fractionDigits);
  return double.parse(value);
}

/// 1.命名参数的使用。(如不支持，可用普通参数)
/// 1.浮点数字转为指定精度的字符串。
/// 2.字符串解析为浮点数字。

