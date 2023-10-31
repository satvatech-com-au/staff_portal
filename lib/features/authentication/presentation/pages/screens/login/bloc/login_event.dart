part of 'login_bloc.dart';

abstract class LoginEvent {
  const LoginEvent();

}

class EmailEvent extends LoginEvent {
  final String email;
  const EmailEvent(this.email);
}

class TokenEvent extends LoginEvent {
  final String token;
  const TokenEvent(this.token);
}
