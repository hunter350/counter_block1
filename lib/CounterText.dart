import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'block.dart';

class CounterText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, int>(
      builder: (context, count) {
        return Text(
          '$count',
          style: TextStyle(fontSize: 50),
        );
      },
    );
  }
}
