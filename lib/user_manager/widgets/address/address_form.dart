import 'package:domain/domain.dart';
import 'package:doublev/dependencies/di.dart';
import 'package:doublev/user_manager/bloc/address/address_form_cubit.dart';
import 'package:doublev/user_manager/bloc/address/address_form_state.dart';
import 'package:doublev/user_manager/user_manager_home.dart';
import 'package:doublev/user_manager/widgets/address/address_form_detail.dart';
import 'package:doublev/user_manager/widgets/address/address_list.dart';
import 'package:doublev/user_manager/widgets/user/user_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressFormPage extends StatefulWidget {
  const AddressFormPage({required this.user, super.key});

  final User user;

  static const String route = 'address_form_page';

  @override
  State<AddressFormPage> createState() => _AddressFormPageState();
}

class _AddressFormPageState extends State<AddressFormPage> {
  final List<Address> address = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Direcciones')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            UserCardWidget(user: widget.user),
            const SizedBox(height: 25),
            BlocProvider(
              create: (context) => getIt<AddressFormCubit>(),
              child: BlocConsumer<AddressFormCubit, AddressFormState>(
                listener: (context, state) {
                  if (state is Success) {
                    Navigator.of(context).pushNamedAndRemoveUntil(UserManagerHomePage.route, (Route<dynamic> route) => false);
                  }
                },
                builder: (context, state) {
                  if (state is Initial) {
                    return Column(
                      children: [
                        AddressList(addressList: address),
                        if (address.isNotEmpty)
                          ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<AddressFormCubit>(context).saveUserData(widget.user, address);
                            },
                            child: const Text('Guardar usuario'),
                          )
                        else
                          const SizedBox(),
                      ],
                    );
                  } else if (state is AddingAddress) {
                    return AddressFormDetail(addressList: address);
                  } else if (state is Saving) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    return const Text('Dev: Estado no manejado');
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
