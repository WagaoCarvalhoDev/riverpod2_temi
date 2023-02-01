import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final provider = Provider<String>((ref) => 'Provider');

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
      body: Consumer(
        builder: (context, ref, child) => Center(
          child: Text(
            ref.watch(provider),
          ),
        ),
      ),
    );
  }
}
