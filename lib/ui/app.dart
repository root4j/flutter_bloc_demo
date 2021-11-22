import 'package:bloc_demo/domain/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'pages/converter.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BLoC Example',
      home: BlocProvider(
        create: (context) => ConverterBloc(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Converter BinToDec And DecToBin"),
          ),
          body: const Center(
            child: Converter(),
          ),
        ),
      ),
    );
  }
}