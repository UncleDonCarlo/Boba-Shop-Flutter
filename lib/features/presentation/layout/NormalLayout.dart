// ignore: file_names
import 'package:flutter/material.dart';
import 'package:learning_flutter/features/presentation/pages/home.dart';
import 'package:learning_flutter/features/presentation/widgets/Header.dart';

class NormalLayout extends StatelessWidget {
  const NormalLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Center(
        child: Home(),
      ),
    );
  }
}