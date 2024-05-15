// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class IncreDecreContainer extends StatelessWidget {
  Icon iconName;
  IncreDecreContainer({super.key, required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Center(child: iconName),
    );
  }
}
