import 'package:flutter/material.dart';
import 'package:riverpod2_temi/ui/pages/future_provider_page.dart';
import 'package:riverpod2_temi/ui/pages/state_notifier_provider_page.dart';
import 'package:riverpod2_temi/ui/pages/stream_provider_page.dart';

import 'pages/change_notifier_provider_page.dart';
import 'pages/provider_page.dart';
import 'pages/state_provider_page.dart';
import 'widgets/button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('RiverPod Explorer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonWidget(
              color: Colors.redAccent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProviderPage(color: Colors.redAccent),
                  ),
                );
              },
              text: 'Provider',
            ),
            const SizedBox(height: 10),
            ButtonWidget(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StateProviderPage(
                        color: Theme.of(context).colorScheme.primary),
                  ),
                );
              },
              text: 'State Provider',
            ),
            const SizedBox(height: 10),
            ButtonWidget(
              color: Colors.redAccent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FutureProviderPage(
                        color: Theme.of(context).colorScheme.primary),
                  ),
                );
              },
              text: 'Future Provider',
            ),
            const SizedBox(height: 10),
            ButtonWidget(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StreamProviderPage(
                        color: Theme.of(context).colorScheme.primary),
                  ),
                );
              },
              text: 'Stream Provider',
            ),
            const SizedBox(height: 10),
            ButtonWidget(
              color: Colors.redAccent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChangeNotifierProviderPage(
                        color: Theme.of(context).colorScheme.primary),
                  ),
                );
              },
              text: 'Change Notifier Provider',
            ),
            const SizedBox(height: 10),
            ButtonWidget(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StateNotifierProviderPage(
                        color: Theme.of(context).colorScheme.primary),
                  ),
                );
              },
              text: 'State Notifier Provider',
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
