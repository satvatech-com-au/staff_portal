import 'pages/screens/login/bloc/login_bloc.dart';
import 'widgets/exports/exports.dart';

class AppBlocProviders{
  static get allBlocProviders => [
   BlocProvider<LoginBloc>(create:(context)=>LoginBloc())
  ];
}