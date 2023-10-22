import 'package:domain/domain.dart';
import 'package:doublev/user_manager/bloc/address/address_form_cubit.dart';
import 'package:doublev/user_manager/bloc/address/address_form_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressList extends StatefulWidget {
  const AddressList({required this.addressList, super.key});

  final List<Address> addressList;

  @override
  State<AddressList> createState() => _AddressListState();
}

class _AddressListState extends State<AddressList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            onPressed: () {
              BlocProvider.of<AddressFormCubit>(context).addAddress();
            },
            icon: const Icon(Icons.add),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: widget.addressList.length,
          itemBuilder: (_, index) {
            final address = widget.addressList.elementAt(index);
            return ListTile(
              title: Text('${address.wayType} ${address.wayNumber}'),
              subtitle: Text(address.detail),
            );
          },
        ),
      ],
    );
  }
}
