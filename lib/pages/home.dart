import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/bloc/counter.dart';
import 'package:latihan_bloc/pages/data_widget.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Counter mycounter = BlocProvider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc Provider"),
        backgroundColor: Colors.amber.shade400,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
                child: InkWell(
                  onTap: () {
                    mycounter.decrement();
                  },
                  borderRadius: BorderRadius.circular(8),
                  child: const SizedBox(
                    height: 100,
                    width: 70,
                    child: Center(
                      child: Icon(Icons.remove, color: Colors.white,),
                    ),
                  ),
                ),
              ),
              DataWidget(),
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
                child: InkWell(
                  onTap: () {
                    mycounter.increment();
                  },
                  borderRadius: BorderRadius.circular(8),
                  child: const SizedBox(
                    height: 100,
                    width: 70,
                    child: Icon(Icons.add, color: Colors.white,),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}