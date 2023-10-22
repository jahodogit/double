import 'package:equatable/equatable.dart';

class UserFormState extends Equatable {
  @override
  List<Object?> get props => [];
}

class Initial extends UserFormState {}

class Saving extends UserFormState {}

class Success extends UserFormState {}

class Error extends UserFormState {
  Error({required this.error});

  final String error;

  @override
  List<Object?> get props => [error];
}
