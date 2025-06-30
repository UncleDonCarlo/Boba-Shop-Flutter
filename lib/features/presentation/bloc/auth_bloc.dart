import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AuthEvent {}

class AppStarted extends AuthEvent {}

class LoggedIn extends AuthEvent {
  final String token;
  final String role;
  final String firstName;
  final String lastName;

  LoggedIn(
    {
      required this.token,
      required this.role,
      required this.firstName,
      required this.lastName
    }
  );
}

class LoggedOut extends AuthEvent {}

class AuthState {
  final String? token;
  final String? role;
  final String? firstName;
  final String? lastName;

  bool get isAuthenticated => token != null;

  const AuthState({this.token, this.role,this.firstName, this.lastName});

  AuthState copyWith({String? token, String? role, String? firstName, String? lastName}) {
    return AuthState(
      token: token ?? this.token,
      role: role ?? this.role,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
    );
  }
}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {
    on<AppStarted>((event, emit) {
      emit(const AuthState());
    });

    on<LoggedIn>((event, emit) {
      emit(
        AuthState(
            token: event.token,
            role: event.role,
            firstName: event.firstName,
            lastName: event.lastName
          )
        );
    });

    on<LoggedOut>((event, emit) {
      emit(const AuthState());
    });
  }
}