import 'package:flutter/material.dart';
import 'package:learning_flutter/features/presentation/layout/NormalLayout.dart';

void main() {
  runApp(const MaterialApp(
    title: "DonCarlo",
    debugShowCheckedModeBanner: false,
    home: NormalLayout(
      key: Key("NormalLayout"),
    ),
  ));
}

