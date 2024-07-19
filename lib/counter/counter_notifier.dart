import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'counter_notifier.g.dart';

@riverpod
class CounterNotifier extends _$CounterNotifier {
  // 初期値を0に設定
  @override
  int build() {
    return 0;
  }
  // 数字を　+1 する
  void increment() {
    state++;
  }
  // 数字を -1 する
  void decrement() {
    state--;
  }
}