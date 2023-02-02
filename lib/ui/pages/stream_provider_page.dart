import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod2_temi/ui/services/stream_service.dart';

final streamValueProvider = StreamProvider.autoDispose((ref) {
  final streamService = ref.watch(streamServiceProvider);
  return streamService.getStream();
});

class StreamProviderPage extends ConsumerWidget {
  const StreamProviderPage({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final streamValue = ref.watch(streamValueProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Provider'),
        backgroundColor: color,
      ),
      body: Center(
        child: streamValue.when(
          data: (data) => Text(
            data.toString(),
            style: const TextStyle(fontSize: 40),
          ),
          error: (error, stackTrace) => const Text('error.toString()'),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
