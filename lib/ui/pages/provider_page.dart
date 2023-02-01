import 'package:flutter/material.dart';

class ProviderPage extends StatelessWidget {
  const ProviderPage({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
        backgroundColor: color,
      ),
      body: const Center(child: Text('Provider')),
    );
  }
}
