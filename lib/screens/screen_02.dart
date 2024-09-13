import 'package:flutter/material.dart';

class MyHomePage2 extends StatefulWidget {
  MyHomePage2({super.key, required this.count});

   int count;

  @override
  State<MyHomePage2> createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  void _incrementCounter() {
    setState(() {
      widget.count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Test 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${widget.count}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            //         ElevatedButton(
            // onPressed: () => Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => const MyHomePage1(),
            //     )),
            // child: const Text("Screen 01 ->"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.remove),
      ),
    );
  }
}
