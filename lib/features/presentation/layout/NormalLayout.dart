import 'package:flutter/material.dart';
import 'package:learning_flutter/features/presentation/pages/home.dart';
import 'package:learning_flutter/features/presentation/widgets/Drawer.dart';
import 'package:learning_flutter/features/presentation/widgets/Footer.dart';
import 'package:learning_flutter/features/presentation/widgets/Header.dart';

class NormalLayout extends StatefulWidget {
  const NormalLayout({super.key});

  @override
  State<NormalLayout> createState() => _NormalLayoutState();
}

class _NormalLayoutState extends State<NormalLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Center(
        child: Home()
      ),
      drawer: CustomDrawer(),
      bottomNavigationBar: Footer(
        key: UniqueKey(),
      ),
    );
  }
}