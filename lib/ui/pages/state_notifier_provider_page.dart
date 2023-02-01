import 'package:flutter/material.dart';

class StateNotifierProviderPage extends StatelessWidget {
  const StateNotifierProviderPage({Key? key, required this.color})
      : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Notifier Provider'),
        backgroundColor: color,
      ),
      body: const Center(child: Text('State Notifier Provider')),
    );
  }
}
