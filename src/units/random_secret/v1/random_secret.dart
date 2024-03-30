import 'dart:math';

enum LetterType {
  low, // 小写字母
  up, // 大写字母
  num, // 数字
  sp, // 特殊符号
}

void run() {
  int lowStart = "a".codeUnitAt(0);
  int upStart = "A".codeUnitAt(0);
  int numStart = "0".codeUnitAt(0);

  List<String> lowLetters = rangeLetter(lowStart, lowStart + 26);
  List<String> upLetters = rangeLetter(upStart, upStart + 26);
  List<String> numLetters = rangeLetter(numStart, numStart + 10);
  List<String> spLetters = ['@', '#', r'$', '%', '^', '&', '*'];

  Map<LetterType, List<String>> letterMap = {
    LetterType.low: lowLetters,
    LetterType.up: upLetters,
    LetterType.num: numLetters,
    LetterType.sp: spLetters
  };
  print(genSecret(
    length: 38,
    letterMap: letterMap,
    enables: [LetterType.low,LetterType.sp,LetterType.num],
  ));
}

String genSecret({
  int length = 8,
  List<LetterType> enables = LetterType.values,
  required Map<LetterType, List<String>> letterMap,
}) {
  List<String> result = [];
  Random random = Random();
  for (int i = 0; i < length; i++) {
    int type = random.nextInt(enables.length);
    List<String> letters = letterMap[enables[type]] ?? [];
    int letterIndex = random.nextInt(letters.length);
    result.add(letters[letterIndex]);
  }
  return result.join();
}

List<String> rangeLetter(int start, int end) {
  List<String> result = [];
  for (int i = start; i < end; i++) {
    String char = String.fromCharCode(i);
    result.add(char);
  }
  return result;
}
