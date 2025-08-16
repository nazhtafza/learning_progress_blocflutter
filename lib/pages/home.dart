import 'package:flutter/material.dart';
import 'package:latihan_bloc/bloc/counter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
 Counter myCounter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BLOC App"),
        backgroundColor: Colors.amber.shade400,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<Counter, int>(
              bloc: myCounter,
              buildWhen: (previous, current){
                return false;
              },
              builder: (context, state){
                return Text(
                          "$state",
                          style: const TextStyle(
                            fontSize: 50,
                          )
                );
              }
              ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){myCounter.decrement();}, icon: Icon(Icons.remove)),
              IconButton(onPressed: (){myCounter.increment();}, icon: Icon(Icons.add)),
            ],
          )
        ],
      ),
    );
  }
}
