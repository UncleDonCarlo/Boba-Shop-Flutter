import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_flutter/features/presentation/bloc/auth_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final authState = context.watch<AuthBloc>().state;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Hello, welcome to the Home Page! ${authState.firstName} ${authState.lastName}'),
        SizedBox(height: 20),
        Text('You can add more widgets here.'),
      ],
    );
  }
}
