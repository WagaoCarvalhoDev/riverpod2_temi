import 'package:flutter/material.dart';

class StateProviderPage extends StatelessWidget {
  const StateProviderPage({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Provider'),
        backgroundColor: color,
      ),
      body: const Center(child: Text('State Provider')),
    );
  }
}
