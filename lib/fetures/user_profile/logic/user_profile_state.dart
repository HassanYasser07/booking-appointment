// part of 'user_profile_cubit.dart';
//
// @immutable
// sealed class UserProfileState {}
//
// final class UserProfileInitial extends UserProfileState {}
import 'package:booking_appointment/fetures/user_profile/data/models/user_profile_model.dart';
import 'package:equatable/equatable.dart';

abstract class UserProfileState extends Equatable {
  const UserProfileState();

  @override
  List<Object?> get props => [];
}

class UserProfileInitial extends UserProfileState {}

class UserProfileLoading extends UserProfileState {}

class UserProfileLoaded extends UserProfileState {
  final UserModel user;

  const UserProfileLoaded(this.user);

  @override
  List<Object?> get props => [user];
}

class UserProfileError extends UserProfileState {
  final String message;

  const UserProfileError(this.message);

  @override
  List<Object?> get props => [message];
}
