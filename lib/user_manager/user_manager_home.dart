import 'package:doublev/dependencies/di.dart';
import 'package:doublev/user_manager/bloc/user/user_home_cubit.dart';
import 'package:doublev/user_manager/bloc/user/user_home_state.dart';
import 'package:doublev/user_manager/widgets/user/user_form.dart';
import 'package:doublev/user_manager/widgets/user/user_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserManagerHomePage extends StatefulWidget {
  const UserManagerHomePage({super.key});

  static const route = 'user_manager_home';

  @override
  State<UserManagerHomePage> createState() => _UserManagerHomePageState();
}

class _UserManagerHomePageState extends State<UserManagerHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Usuarios')),
      body: Center(
        child: BlocProvider(
          create: (context) => getIt<UserHomeCubit>(),
          child: BlocConsumer<UserHomeCubit, UserHomeState>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state is Loading) {
                return const CircularProgressIndicator();
              } else if (state is Success) {
                return UserListWidget(users: state.users);
              } else if (state is Error) {
                return const Text('Error');
              } else {
                return const Text('Dev: Estado no manejado');
              }
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pushNamed(UserFormPage.route),
        child: const Icon(Icons.add),
      ),
    );
  }
}
