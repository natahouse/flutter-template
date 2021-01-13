import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template/src/bloc/Counter.bloc.dart';
import 'package:template/src/screens/Home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Counter(0),
        )
      ],
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}
