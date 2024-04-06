import "package:flutter_bloc/flutter_bloc.dart";
import 'package:meta/meta.dart';
part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  void signupWithGitHub() {
    emit(SignUpFailed(provider: 'github',reason: 'dev is lazy'));
  }
  void signupWithGoogle() {
    emit(SignUpFailed(provider: 'google',reason: 'dev is lazy'));
  }
  void signupWithLinkedIn() {
    emit(SignUpFailed(provider: 'LinkedIn',reason: 'dev is lazy'));
  }
  void signUp() {
    emit(SignUp(status:'',reason: ''));
  }

}