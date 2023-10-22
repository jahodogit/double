import 'package:doublev/user_manager/bloc/user_home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infrastructure/infrastructure.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserHomeCubit extends Cubit<UserHomeState> {
  UserHomeCubit(this._userLocalRepository) : super(Loading());

  final UserLocalRepository _userLocalRepository;

  void getAllUsers() {
    final users = _userLocalRepository.getAll();
    emit(Success(users: users));
  }
}
