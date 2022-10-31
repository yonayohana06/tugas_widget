import 'package:flutter/material.dart';
import 'package:inherited_widget_example/widgets/inherited_example.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final count = InheritedExample.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inherited Widget Example'),
      ),
      body: ValueListenableBuilder<int>(
        valueListenable: count!.counter,
        builder: (context, value, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'You have pushed the button this many times:',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${count.counter.value}',
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count.counter.value+=1;
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
