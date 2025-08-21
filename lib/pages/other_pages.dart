import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/bloc/counter.dart';

class OtherPages extends StatelessWidget {
  const OtherPages({super.key});

  @override
  Widget build(BuildContext context) {
    Counter counter = context.read<Counter>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Other Page"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: BlocBuilder<Counter, int>(
          bloc: counter,
          builder: (context, state) {
          return Text(
            "$state",
            style: const TextStyle(fontSize: 50, color: Colors.blue),
          );
        },
        ),
      ),
    );
  }
}
