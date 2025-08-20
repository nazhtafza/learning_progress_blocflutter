import 'package:flutter/material.dart';
import 'package:latihan_bloc/home/yellow.dart';

class Red extends StatelessWidget {
  const Red({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 130,
      color: Colors.red,
      child: Yellow(),
    );
  }
}