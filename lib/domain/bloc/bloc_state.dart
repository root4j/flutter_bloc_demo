import 'package:equatable/equatable.dart';

// Clase abstracta para manejo de estados
abstract class AbstractConverterState extends Equatable {
  const AbstractConverterState();

  @override
  List<Object> get props => [];
}

// Clase que maneja los estados
class ConverterState extends AbstractConverterState {
  final String decimal;
  final String binary;

  const ConverterState(this.decimal, this.binary);

  @override
  List<Object> get props => [decimal, binary];
}