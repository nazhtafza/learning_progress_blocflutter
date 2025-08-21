import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/bloc/counter.dart';
import 'package:latihan_bloc/home/red.dart';
import 'package:latihan_bloc/pages/other_pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Counter mycounter = BlocProvider.of<Counter>(context);
    Counter mycounter = context.read<Counter>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dependency Injection"),
        backgroundColor: Colors.blue.shade400,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Colors.amber.shade400,
                  child: InkWell(
                    onTap: (){
                      mycounter.decrement();
                    },
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Icon(Icons.remove, color: Colors.white,),
                    ),
                  ),
                ),
                Red(),
                Material(
                  color: Colors.amber.shade400,
                  child: InkWell(
                    onTap: (){
                      mycounter.increment();
                    },
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Icon(Icons.add, color: Colors.white,),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            FloatingActionButton(
              onPressed: (){
                Navigator.of(context).pushNamed("/other");
              },
              backgroundColor: Colors.blue,
              child: const Icon(Icons.arrow_forward, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
