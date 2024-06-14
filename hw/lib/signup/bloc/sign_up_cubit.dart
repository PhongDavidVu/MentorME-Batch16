import "package:flutter_bloc/flutter_bloc.dart";
import 'package:meta/meta.dart';

import '../../generated/l10n.dart';
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
    emit(SignUpFailed(provider: 'github', reason: 'dev is lazy'));
  }

  void signupWithGoogle() {
    emit(SignUpFailed(provider: 'google', reason: 'dev is lazy'));
  }

  void signupWithLinkedIn() {
    emit(SignUpSuccess(provider: 'LinkedIn'));
  }

  void signUp() {
    if (_name.isEmpty) {
      emit(SignUp(
          status: 'Failed', reason: Batch16String.current.notEmpty('Name')));
    } else if (_email.isEmpty) {
      emit(SignUp(
          status: 'Failed', reason: Batch16String.current.notEmpty('Email')));
    } else if (_password.isEmpty) {
      emit(SignUp(
          status: 'Failed',
          reason: Batch16String.current.notEmpty('Password')));
    } else if (!_isEmailValid(_email)) {
      emit(SignUp(
          status: 'Failed', reason: Batch16String.current.invalid("email")));
    } else if (!_isPasswordValid(_password)) {
      emit(SignUp(
          status: 'Failed', reason: Batch16String.current.tooWeak('Password')));
    }
    if (!(_password.isEmpty ||
        _email.isEmpty ||
        _email.isEmpty ||
        !_isPasswordValid(_password) ||
        !_isEmailValid(_email))) {
      emit(SignUp(status: 'Success', reason: ''));
    }
  }

  bool _isEmailValid(String email) {
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
    return emailRegex.hasMatch(email);
  }

  bool _isPasswordValid(String password) {
    final passwordRegex = RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d).{8,}$');
    return passwordRegex.hasMatch(password);
  }
}
