import 'package:bloc_demo/ui/widggets/bin_to_dec.dart';
import 'package:bloc_demo/ui/widggets/dec_to_bin.dart';
import 'package:flutter/material.dart';

class Converter extends StatefulWidget {
  const Converter({Key? key}) : super(key: key);

  @override
  State<Converter> createState() {
    return _ConverterState();
  }
}

class _ConverterState extends State<Converter> {
  String _buttonText = "Binary -> Decimal";
  int _wId = 0;
  Widget _widget = const BinaryToDecimal();

  void _swapWidget() {
    setState(() {
      switch (_wId) {
        case 0:
          _buttonText = "Binary -> Decimal";
          _widget = const BinaryToDecimal();
          _wId = 1;
          break;
        default:
          _buttonText = "Decimal -> Binary";
          _widget = const DecimalToBinary();
          _wId = 0;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(12.0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0.00, 3.00),
                    color: const Color(0xff000000).withOpacity(0.16),
                    blurRadius: 6),
              ],
              borderRadius: BorderRadius.circular(4.00),
            ),
            child: MaterialButton(
              child: Text(_buttonText),
              onPressed: () {
                _swapWidget();
              },
            ),
          ),
        ),
        Expanded(child: _widget)
      ],
    );
  }
}
