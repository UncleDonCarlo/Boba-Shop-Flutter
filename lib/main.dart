import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_flutter/features/presentation/bloc/auth_bloc.dart';
import 'package:learning_flutter/features/presentation/layout/NormalLayout.dart';
import 'package:learning_flutter/features/presentation/pages/login.dart';

void main() {
  runApp(
    BlocProvider(
      create: (_) => AuthBloc()..add(AppStarted()),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state.isAuthenticated) {
            return NormalLayout();
          } else {
            return MyLoginPage();
          }
        },
      ),
    );
  }
}