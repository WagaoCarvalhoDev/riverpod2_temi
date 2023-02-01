import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod2_temi/ui/widgets/button_widget.dart';

final providerState = StateProvider.autoDispose<int>((ref) => 0);

class StateProviderPage extends ConsumerWidget {
  const StateProviderPage({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(providerState);

    ref.listen(providerState, (previous, next) {
      if (next < 0) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
            'Negative Number are not accept',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
      }
      if (next < 0) ref.read(providerState.notifier).state = 0;
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('State Provider'),
        backgroundColor: color,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$value',
              style: const TextStyle(fontSize: 40),
            ),
            const SizedBox(height: 20),
            ButtonWidget(
              onPressed: () {
                ref.read(providerState.notifier).state++;
              },
              text: 'Increment',
              fontSize: 20,
            ),
            const SizedBox(height: 20),
            ButtonWidget(
              onPressed: () {
                ref.read(providerState.notifier).state--;
              },
              text: 'Decrement',
              fontSize: 20,
            ),
            const SizedBox(height: 20),
            ButtonWidget(
              onPressed: () => ref.refresh(providerState),
              text: 'Refresh',
              fontSize: 20,
            ),
          ],
        ),
      ),
    );
  }
}
