import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/error_page/error_page.dart';
import 'package:latihan_bloc/pages/other_pages.dart';
import '../bloc/counter.dart';
import '../home/home.dart';
class AppRoute{
  final Counter mycounter = Counter();
  Route onRoute(RouteSettings settings){
    switch(settings.name){
      case "/":
       return MaterialPageRoute(
         builder: (context) => BlocProvider.value(
         value: mycounter,
         child: HomePage(),
       ),
       );
      case "/other":
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: mycounter,
            child: const OtherPages(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundPage(),
          );
    }
  }
}