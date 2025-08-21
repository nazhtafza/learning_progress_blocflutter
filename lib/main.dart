import 'package:flutter/material.dart';
import 'package:latihan_bloc/bloc/counter.dart';
import 'package:latihan_bloc/bloc/theme.dart';
import 'package:latihan_bloc/pages/app.dart';
import 'package:latihan_bloc/pages/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  MyApp({super.key});
final ThemeBloc myTheme = ThemeBloc();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context)=> CounterBloc(),),
          BlocProvider(create: (context)=> myTheme),
        ],
        child: App(myTheme: myTheme,),
    );
  }
}


// BlocProvider(
// create: (context) => myTheme,
// child: BlocBuilder<ThemeBloc, bool>(
// bloc: myTheme,
// builder: (context, state) {
// return MaterialApp(
// theme: state == true ? ThemeData.light(): ThemeData.dark(),
// home: BlocProvider(
// create: (context)=> CounterBloc(),
// child: HomePage(),
// ),
// );
// }
// ),
// );