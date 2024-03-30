/// 求一组整数的平均数
/// 知识点:
///   1.列表遍历访问元素
///   2.列表的长度
double avg(List<int> values) {
  List<int> values = [1, 9, 9, 4, 0, 3, 2, 8];
  int sum = 0;
  for (int value in values) {
    sum += value;
  }
  double ret = sum / values.length;
  return ret;
}

/// 求一组整数偶数索引的平均数
/// 知识点:
///   1. 列表遍历访问元素，需要访问含索引的
///   2.列表的长度
double avgEven() {
  List<int> values = [1, 9, 9, 4, 0, 3, 2, 8];
  int sum = 0;
  int counter = 0;
  for (int i = 0; i < values.length; i += 2) {
    sum += values[i];
    counter++;
  }
  double ret = sum / counter;
  return ret;
}

/// 迭代器遍历
void visit03() {
  List<String> shapes = ['Line', 'Rectangle', 'Triangle', 'Circle'];
  Iterator<String> it = shapes.iterator;
  while (it.moveNext()) {
    print(it.current);
  }
}
