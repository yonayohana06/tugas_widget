import 'package:flutter/material.dart';

class InheritedExample extends InheritedWidget {

  final ValueNotifier<int> counter = ValueNotifier(0);

  InheritedExample({Key? key, required Widget child})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedExample oldWidget) =>
      oldWidget.counter != counter;

  static InheritedExample? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedExample>();
  }
}
