import "package:flutter_bloc/flutter_bloc.dart";
import 'package:meta/meta.dart';
part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());
  String _name = "";
  String _email = "";
  String _password = "";

  set name(String name) {
    _name = name;
  }

  set email(String email) {
    _email = email;
  }

  set password(String password) {
    _password = password;
  }
  void signupWithGitHub() {
    emit(SignUpFailed(provider: 'github',reason: 'dev is lazy'));
  }
  void signupWithGoogle() {
    emit(SignUpFailed(provider: 'google',reason: 'dev is lazy'));
  }
  void signupWithLinkedIn() {
    emit(SignUpSuccess(provider: 'LinkedIn'));
  }
  void signUp() {
    emit(SignUp(status:'',reason: ''));
  }


}