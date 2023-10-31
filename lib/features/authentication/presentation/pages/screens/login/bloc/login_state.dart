part of 'login_bloc.dart';

class LoginState {
  const LoginState({
    this.email = '',
    this.token = ''
  });

  final String email;
  final String token;

  LoginState copyWith({
    String? email,
    String? token
  }){
    return LoginState(
      email:email ?? this.email,
      token:token ?? this.token
    );
  }
  
}


