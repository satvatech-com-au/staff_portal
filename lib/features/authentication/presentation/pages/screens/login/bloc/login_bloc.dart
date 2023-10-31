import 'package:bloc/bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
   on<EmailEvent>(_emailEvent);
   on<TokenEvent>(_tokenEvent);
  }

  void _emailEvent(EmailEvent event,Emitter <LoginState> emit){
    emit(state.copyWith(email: event.email));
  }

   void _tokenEvent(TokenEvent event,Emitter <LoginState> emit){
    emit(state.copyWith(token: event.token));
  }
}
