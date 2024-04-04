part of 'sign_up_cubit.dart';

@immutable
sealed class SignUpState {}

final class SignUpInitial extends SignUpState {}

class SignUpFailed extends SignUpState {
  String provider;
  String reason;
  SignUpFailed({required this.provider, required this.reason});
}