import 'package:flutter/material.dart';

class ChangeNotifierProviderPage extends StatelessWidget {
  const ChangeNotifierProviderPage({Key? key, required this.color})
      : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Notifier Provider'),
        backgroundColor: color,
      ),
      body: const Center(child: Text('Change Notifier Provider')),
    );
  }
}
