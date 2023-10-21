import 'package:domain/src/address/exceptions/invalid_way_number.dart';

class Address {
  Address({required this.wayType, required this.wayNumber, required this.detail}) {
    _validateWayNumber();
  }

  final String wayType;
  final String wayNumber;
  final String detail;

  static final _wayNumberRegulaExpresion = RegExp(r'^(\d+)( - )(\d+)$');

  void _validateWayNumber() {
    if (!_wayNumberRegulaExpresion.hasMatch(wayNumber)) throw InvalidWayNumberException();
  }
}
