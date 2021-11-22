import 'package:bloc_demo/domain/use_cases/converter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_events.dart';
import 'bloc_state.dart';

class ConverterBloc extends Bloc<ConvertionEvent, AbstractConverterState> {
  // Variables de clase
  String _decimal = "0", _binary = "0";

  // Constructor de estado inicial
  ConverterBloc() : super(const ConverterState("0", "0")) {
    // Emision de cambios de estado del widget DecimalToBinary
    on<UpdateDecimalEvent>((event, emit) {
      try {
        _decimal = Converter.adjustValue(_decimal, event.digit);
        _binary = Converter.decimalToBinary(_decimal);

        emit(ConverterState(
          _decimal,
          _binary,
        ));
        // ignore: empty_catches
      } catch (error) {
        print(error);
      }
    });

    // Emision de cambios de estado del widget BinaryToDecimal
    on<UpdateBinaryEvent>((event, emit) {
      try {
        _binary = Converter.adjustValue(_binary, event.digit);
        _decimal = Converter.binaryToDecimal(_binary);

        emit(ConverterState(
          _decimal,
          _binary,
        ));
        // ignore: empty_catches
      } catch (error) {
        print(error);
      }
    });

    // Emision de cambios de estado del widget Reset
    on<ResetEvent>((event, emit) {
      try {
        _binary = "0";
        _decimal = "0";

        emit(ConverterState(
          _decimal,
          _binary,
        ));
        // ignore: empty_catches
      } catch (error) {}
    });
  }

  // Getter
  String get decimal => _decimal;
  String get binary => _binary;
}
