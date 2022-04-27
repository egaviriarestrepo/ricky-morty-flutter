// 🎯 Dart imports:
import 'dart:math';

T getRandomElement<T>(List<T> list) {
  final random = Random();
  final i = random.nextInt(list.length);
  return list[i];
}
