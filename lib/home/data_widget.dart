import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter.dart';

class DataWidget extends StatelessWidget {
const DataWidget({
super.key,
});

@override
Widget build(BuildContext context) {
  Counter mycounter = context.read<Counter>();
return BlocBuilder(
  bloc: mycounter,
  builder: (context, state) => Text(
    "$state",
    style: const TextStyle(
      fontSize: 20,
      color: Colors.white,
    ),
  ),
);
}
}