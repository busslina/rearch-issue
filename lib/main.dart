import 'package:flutter/material.dart';
import 'package:flutter_rearch/flutter_rearch.dart';
import 'package:rearch_issue/counter.capsule.dart';

void main() {
  runApp(const RearchBootstrapper(child: App()));
}

class App extends RearchConsumer {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetHandle use) {
    final globalCounter = use(globalCounterCapsule);

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Counter: $globalCounter'),
        ),
      ),
    );
  }
}
