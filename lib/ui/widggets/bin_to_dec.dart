import 'package:bloc_demo/domain/bloc/bloc.dart';
import 'package:bloc_demo/domain/bloc/bloc_events.dart';
import 'package:bloc_demo/domain/bloc/bloc_state.dart';
import 'package:bloc_demo/domain/bloc/bloc_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BinaryToDecimal extends StatelessWidget {
  const BinaryToDecimal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        BlocConsumer<ConverterBloc, AbstractConverterState>(
          listener: (context, state) {},
          builder: (context, state) {
            ConverterState _st = state as ConverterState;
            return Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerRight,
              child: Text(
                _st.binary,
                textAlign: TextAlign.right,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 35),
              ),
            );
          },
        ),
        BlocConsumer<ConverterBloc, AbstractConverterState>(
          listener: (context, state) {},
          builder: (context, state) {
            ConverterState _st = state as ConverterState;
            return Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerRight,
              child: Text(
                _st.decimal,
                textAlign: TextAlign.right,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 35),
              ),
            );
          },
        ),
        Expanded(
          flex: 4,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              KeyPadButton(const Key('bin2Dec1'), 1, context),
              KeyPadButton(const Key('bin2Dec0'), 0, context)
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              color: Theme.of(context).colorScheme.secondaryVariant,
              child: const Text(
                "Reset",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              onPressed: () => BlocUtils().event(context, const ResetEvent()),
            ),
          ),
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Widget KeyPadButton(key, number, context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
          key: key,
          color: Theme.of(context).primaryColor,
          child: Text(
            number.toString(),
            style: const TextStyle(color: Colors.white),
          ),
          onPressed: () =>
              BlocUtils().event(context, UpdateBinaryEvent(number)),
        ),
      ),
    );
  }
}