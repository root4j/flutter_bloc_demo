import 'package:bloc_demo/domain/bloc/bloc.dart';
import 'package:bloc_demo/domain/bloc/bloc_events.dart';
import 'package:bloc_demo/domain/bloc/bloc_state.dart';
import 'package:bloc_demo/domain/bloc/bloc_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DecimalToBinary extends StatelessWidget {
  const DecimalToBinary({Key? key}) : super(key: key);

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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              KeyPadButton(1, context),
              KeyPadButton(2, context),
              KeyPadButton(3, context)
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              KeyPadButton(4, context),
              KeyPadButton(5, context),
              KeyPadButton(6, context)
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              KeyPadButton(7, context),
              KeyPadButton(8, context),
              KeyPadButton(9, context)
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              KeyPadButton(0, context),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  color: Theme.of(context).colorScheme.secondaryVariant,
                  child: const Text(
                    "Reset",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  onPressed: () =>
                      BlocUtils().event(context, const ResetEvent()),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Widget KeyPadButton(number, context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
          color: Theme.of(context).primaryColor,
          child: Text(
            number.toString(),
            style: const TextStyle(color: Colors.white),
          ),
          onPressed: () =>
              BlocUtils().event(context, UpdateDecimalEvent(number)),
        ),
      ),
    );
  }
}