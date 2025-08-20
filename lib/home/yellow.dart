import 'package:flutter/material.dart';

import 'blue.dart';

class Yellow extends StatelessWidget {
  const Yellow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      color: Colors.amber,
      child: Blue(),
    );
  }
}

