import 'package:bloc_demo/domain/bloc/bloc.dart';
import 'package:bloc_demo/domain/bloc/bloc_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Implermentacion de clase con patron de diseño Singleton
class BlocUtils {
  static final BlocUtils _singleton = BlocUtils._internal();

  factory BlocUtils() {
    return _singleton;
  }

  BlocUtils._internal();

  // Metodo general para manejo de todas las peticiones del ConverterBloc
  void event(BuildContext context, ConvertionEvent event) {
    BlocProvider.of<ConverterBloc>(context).add(event);
  }
}