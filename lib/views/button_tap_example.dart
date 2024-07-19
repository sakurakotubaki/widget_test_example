import 'package:flutter/material.dart';

class ButtonTapExample extends StatefulWidget {
  const ButtonTapExample({super.key});

  @override
  State<ButtonTapExample> createState() => _ButtonTapExampleState();
}

class _ButtonTapExampleState extends State<ButtonTapExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Button Tap Example'),
      ),
      body: Column(
        children: [
          IconButton(
            key: const Key('addIconButton'),
            onPressed: () {}, icon: const Icon(
              key: Key('addIcon'),
              Icons.add)),
          ElevatedButton(
            key: const Key('tapedButton'),
            onPressed: () {
            
          }, child: const Text('Tap', key: Key('textInsideButton'))),// Textウィジェットには異なるキーを割り当てる
        ],
      ),
    );
  }
}