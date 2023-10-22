import 'package:domain/domain.dart';
import 'package:doublev/user_manager/bloc/address/address_form_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressFormDetail extends StatelessWidget {
  AddressFormDetail({required this.addressList, super.key});

  final List<Address> addressList;

  late String wayType;
  late String wayNumber;
  late String detail;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Informacion de envio',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        const SizedBox(height: 25),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                onChanged: (value) => wayType = value,
                decoration: const InputDecoration(
                  helperText: '(AV / CRA / CLL) + #',
                  label: Text('Tipo y numero de calle'),
                ),
              ),
            ),
            const SizedBox(width: 25),
            Expanded(
              child: TextFormField(
                onChanged: (value) => wayNumber = value,
                decoration: const InputDecoration(
                  helperText: '# - #',
                  label: Text('Numero'),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 25),
        TextFormField(
          onChanged: (value) => detail = value,
          decoration: const InputDecoration(
            label: Text('Detalle adicional'),
          ),
        ),
        const SizedBox(height: 50),
        ElevatedButton(
          onPressed: () {
            final address = Address(wayType: wayType, wayNumber: wayNumber, detail: detail);
            addressList.add(address);
            BlocProvider.of<AddressFormCubit>(context).saveAddress();
          },
          child: const Text('Guardar'),
        ),
      ],
    );
  }
}
