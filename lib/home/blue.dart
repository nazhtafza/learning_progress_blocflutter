import 'package:flutter/material.dart';

import 'center_data.dart';

class Blue extends StatelessWidget {
  const Blue({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      color: Colors.blue,
      child: CenterData(),
    );
  }
}

