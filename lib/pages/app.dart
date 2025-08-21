import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter.dart';
import '../bloc/theme.dart';
import 'home.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    required this.myTheme,
  });

  final ThemeBloc myTheme;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, bool>(
        bloc: myTheme,
        builder: (context, state) {
          return MaterialApp(
            theme: state == true ? ThemeData.light() : ThemeData.dark(),
            home: BlocProvider(
              create: (context) => CounterBloc(),
              child: HomePage(),
            ),
          );
        }
    );
  }
}