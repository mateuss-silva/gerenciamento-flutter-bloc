part of 'login_bloc.dart';

@immutable
abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginIdleState extends LoginState {
  final LoginViewModel login;

  const LoginIdleState({
    this.login = const LoginViewModel(),
  }) : super();

  @override
  List<Object> get props => [login];
}

class LoginLoadingState extends LoginState {
  const LoginLoadingState();
  @override
  List<Object> get props => [];
}

class LoginSuccessState extends LoginState {
  const LoginSuccessState();
  @override
  List<Object> get props => [];
}

class LoginErrorState extends LoginState {
  final String message;

  const LoginErrorState({
    required this.message,
  }) : super();
}