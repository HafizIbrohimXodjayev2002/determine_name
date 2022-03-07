import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_names.g.dart';

abstract class BuiltNames implements Built<BuiltNames, BuiltNamesBuilder> {
  String get name;
  String? get gender;
  num get probability;
  int get count; 

  BuiltNames._();

  factory BuiltNames([Function(BuiltNamesBuilder b) updates]) = _$BuiltNames;

  static Serializer<BuiltNames> get serializer => _$builtNamesSerializer;
}