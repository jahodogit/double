import 'package:domain/domain.dart';
import 'package:doublev/user_manager/bloc/address/address_form_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infrastructure/infrastructure.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddressFormCubit extends Cubit<AddressFormState> {
  AddressFormCubit(this._userLocalRepository, this._addressLocalRepository) : super(Initial());

  final UserLocalRepository _userLocalRepository;
  final AddressLocalRepository _addressLocalRepository;

  Future<void> saveUserData(User user, List<Address> address) async {
    emit(Saving());
    final userId = await _userLocalRepository.save(user);

    for (final element in address) {
      await _addressLocalRepository.save(element, userId);
    }
    emit(Success());
  }

  void addAddress() => emit(AddingAddress());
  void saveAddress() => emit(Initial());
}
