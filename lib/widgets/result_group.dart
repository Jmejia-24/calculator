import 'package:calculator/bloc/calculator/calculator_bloc.dart';
import 'package:flutter/material.dart';
import 'package:calculator/widgets/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultGroup extends StatelessWidget {
  const ResultGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorBloc, CalculatorState>(
      builder: (context, state) {
        return Column(
          children: [
            SubResultLabel(text: state.firstNumber),
            SubResultLabel(text: state.operation),
            SubResultLabel(text: state.secondNumber),
            LineSeparator(),
            MainResultLabel(text: state.mathResult),
          ],
        );
      },
    );
  }
}