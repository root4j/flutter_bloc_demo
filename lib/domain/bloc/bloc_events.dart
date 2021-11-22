import 'package:equatable/equatable.dart';

// Clase para el maneo de los ebentos del BLoC
abstract class ConvertionEvent extends Equatable {
  const ConvertionEvent();
}

// Evento para actualizar los decimales
class UpdateDecimalEvent extends ConvertionEvent {
  final int digit;

  const UpdateDecimalEvent(this.digit);

  @override
  List<Object> get props => [digit];
}

// Evento para actualizar los binarios
class UpdateBinaryEvent extends ConvertionEvent {
  final int digit;

  const UpdateBinaryEvent(this.digit);

  @override
  List<Object> get props => [digit];
}

// Evento para actualizar los binarios
class ResetEvent extends ConvertionEvent {
  const ResetEvent();

  @override
  List<Object> get props => [];
}