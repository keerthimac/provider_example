import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providers/counter_provider.dart';
import 'package:provider_example/screens/screen_02.dart';

class MyHomePage1 extends StatefulWidget {
  const MyHomePage1({
    super.key,
  });

  @override
  State<MyHomePage1> createState() => _MyHomePage1State();
}

class _MyHomePage1State extends State<MyHomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Test"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Consumer<CounterProvider>(
                builder: (context, value, child) => Text(
                  '${value.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              ElevatedButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyHomePage2(),
                      )),
                  child: const Text("Screen 02 ->"))
            ],
          ),
        ),
        floatingActionButton: Consumer<CounterProvider>(
          builder: (context, value, child) => FloatingActionButton(
            onPressed: value.incrementCount,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ));
  }
}
