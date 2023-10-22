import 'package:equatable/equatable.dart';

class AddressFormState extends Equatable {
  @override
  List<Object?> get props => [];
}

class Initial extends AddressFormState {}

class AddingAddress extends AddressFormState {}

class Saving extends AddressFormState {}

class Success extends AddressFormState {}
