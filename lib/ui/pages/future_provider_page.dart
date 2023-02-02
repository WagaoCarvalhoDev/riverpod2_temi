import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod2_temi/ui/services/api_service.dart';

import '../models/suggestion.dart';

final suggestionFutureProvider =
    FutureProvider.autoDispose<Suggestion>((ref) async {
  final apiService = ref.watch(apiServiceProvider);
  return apiService.getSuggestion('5');
});

class FutureProviderPage extends ConsumerWidget {
  const FutureProviderPage({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<Suggestion> suggestionRef =
        ref.watch(suggestionFutureProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Provider'),
        backgroundColor: color,
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(suggestionFutureProvider.future),
        child: ListView(children: [
          suggestionRef.when(
            data: (data) => Text(data.activity),
            error: (error, stackTrace) =>
                Text('$error.toString()\n $stackTrace.toString()'),
            loading: () => const CircularProgressIndicator(),
          ),
        ]),
      ),
    );
  }
}
