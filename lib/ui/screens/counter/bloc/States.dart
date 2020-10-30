import 'package:flutter/foundation.dart';
@immutable

abstract class Conterstates{
  const Conterstates();
}
class intialcounterstat extends Conterstates{

}
class sucesscounterstat extends Conterstates{
  final String type;

  sucesscounterstat(this.type);

}
class errocounterstat extends Conterstates{
  final String erro;

  errocounterstat(this.erro);

}