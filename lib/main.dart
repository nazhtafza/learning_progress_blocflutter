import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/bloc/counter.dart';
import 'package:latihan_bloc/pages/other_pages.dart';

import 'home/home.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  final Counter mycounter = Counter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) =>
            BlocProvider.value(
                value: mycounter,
                child: HomePage(),
            ),
        "/other" : (context) => BlocProvider.value(
          value: mycounter,
            child: OtherPages(),
        ),
      }
    );
  }
}