import 'package:flutter/material.dart';

class StreamProviderPage extends StatelessWidget {
  const StreamProviderPage({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Provider'),
        backgroundColor: color,
      ),
      body: const Center(child: Text('Stream Provider')),
    );
  }
}
