import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(items: List<String>.generate(2000, (i) => 'item_$i')));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.items}) : super(key: key);

  final List<String> items;

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MyHomePage(title: 'Flutter Demo Home Page', items: items),
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title, required this.items}) : super(key: key);

  final String title;
  final List<String> items;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: ListView.builder(
          itemBuilder: (context, index) => Text(
            widget.items[index],
            key: ValueKey(widget.items[index]),
          ),
        ),
      );
}
