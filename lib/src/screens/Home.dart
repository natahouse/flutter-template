import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template/src/bloc/Counter.bloc.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context).getCounter;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Template by nata.house'),
          backgroundColor: Colors.black87,
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                Provider.of<Counter>(context, listen: false).increment();
              },
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () {
                Provider.of<Counter>(context, listen: false).decrement();
              },
              tooltip: 'Increment',
              child: Icon(Icons.remove),
            )
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Aperte no botão:'),
              Text(
                '${context.watch<Counter>().getCounter}',
                style: Theme.of(context).textTheme.headline3,
              )
            ],
          ),
        ),
      ),
    );
  }
}
