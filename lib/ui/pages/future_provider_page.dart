import 'package:flutter/material.dart';

class FutureProviderPage extends StatelessWidget {
  const FutureProviderPage({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Provider'),
        backgroundColor: color,
      ),
      body: const Center(child: Text('Future Provider')),
    );
  }
}
