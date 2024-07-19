import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_test_example/counter/counter_notifier.dart';

class CounterView extends ConsumerWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Counter Example'),
      ),
      floatingActionButton: FloatingActionButton(
        key: const Key('+Button'),
        onPressed: () => ref.read(counterNotifierProvider.notifier).increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              key: const Key('CounterText'), 
              '$counter'
            ),
          ],
        ),
      ),
    );
  }
}