import '../models/customer.dart';

abstract class CustomerEvent {}

class CustomerAddEvent extends CustomerEvent{
  String _fullname;
  String _phone;
  String _identityNumber;

  CustomerAddEvent(this._fullname, this._phone, this._identityNumber);

  String get fullname => _fullname;
  String get phone => _phone;
  String get identityNumber => _identityNumber;
}

class CustomerListEvent extends CustomerEvent{}
