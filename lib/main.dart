import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'KEIO SFC SOL'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(deviceHeight / 12), // AppBarの高さ
        child: AppBar(),
      ),

      body: SizedBox(
        width: deviceWidth,
        height: deviceHeight / 12 * 11,

        child: const FractionallySizedBox(
            widthFactor: 0.6, //0.6倍
            heightFactor: 1,
            child: Container(
              color: Colors.blue,
            ),
        ),
      ),


      // Column(
      //   children:[
      //     Container(
      //       decoration: const BoxDecoration(color: Colors.white),
      //       height: deviceHeight / 12 * 2,
      //       width: deviceWidth,
      //     ),
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
