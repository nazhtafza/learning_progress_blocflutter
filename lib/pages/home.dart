import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/bloc/counter.dart';
import 'package:latihan_bloc/bloc/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterBloc mycounter = context.read<CounterBloc>();
    ThemeBloc myTheme = context.read<ThemeBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "HOME",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, int>(
            bloc: mycounter,
            builder: (context, state) {
                return Text(
                  "$state",
                  style: TextStyle(fontSize: 50),
                );
                  }
               ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: (){
                    mycounter.remove();
                  },
                  icon: Icon(Icons.remove),
                ),
                IconButton(
                  onPressed: (){
                    mycounter.add();
                  }
                  , icon: Icon(Icons.add),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            myTheme.changeTheme();
          },
        backgroundColor: Colors.blue,
        child: Icon(Icons.sunny, color: Colors.white),
      ),
    );
  }
}
