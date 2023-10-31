
import 'package:hr_application/features/authentication/presentation/widgets/components/flutter_toast.dart';

import '../../../widgets/exports/exports.dart';
import 'bloc/login_bloc.dart';

class LoginController{
  final BuildContext context;
  const LoginController( {required this.context});

 Future<void> handleLogin(String type)async{
    final state = context.read<LoginBloc>().state;
    String email =state.email;
    String token = state.token;

    if(email.isEmpty || token.isEmpty){
      toastInfo(msg: "fill email address and password");
    }else{
      return;
    }
    }
  }

