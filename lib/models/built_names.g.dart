// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_names.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltNames> _$builtNamesSerializer = new _$BuiltNamesSerializer();

class _$BuiltNamesSerializer implements StructuredSerializer<BuiltNames> {
  @override
  final Iterable<Type> types = const [BuiltNames, _$BuiltNames];
  @override
  final String wireName = 'BuiltNames';

  @override
  Iterable<Object?> serialize(Serializers serializers, BuiltNames object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'probability',
      serializers.serialize(object.probability,
          specifiedType: const FullType(num)),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BuiltNames deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltNamesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'probability':
          result.probability = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltNames extends BuiltNames {
  @override
  final String name;
  @override
  final String? gender;
  @override
  final num probability;
  @override
  final int count;

  factory _$BuiltNames([void Function(BuiltNamesBuilder)? updates]) =>
      (new BuiltNamesBuilder()..update(updates)).build();

  _$BuiltNames._(
      {required this.name,
      this.gender,
      required this.probability,
      required this.count})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'BuiltNames', 'name');
    BuiltValueNullFieldError.checkNotNull(
        probability, 'BuiltNames', 'probability');
    BuiltValueNullFieldError.checkNotNull(count, 'BuiltNames', 'count');
  }

  @override
  BuiltNames rebuild(void Function(BuiltNamesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltNamesBuilder toBuilder() => new BuiltNamesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltNames &&
        name == other.name &&
        gender == other.gender &&
        probability == other.probability &&
        count == other.count;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), gender.hashCode), probability.hashCode),
        count.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltNames')
          ..add('name', name)
          ..add('gender', gender)
          ..add('probability', probability)
          ..add('count', count))
        .toString();
  }
}

class BuiltNamesBuilder implements Builder<BuiltNames, BuiltNamesBuilder> {
  _$BuiltNames? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  num? _probability;
  num? get probability => _$this._probability;
  set probability(num? probability) => _$this._probability = probability;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  BuiltNamesBuilder();

  BuiltNamesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _gender = $v.gender;
      _probability = $v.probability;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltNames other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuiltNames;
  }

  @override
  void update(void Function(BuiltNamesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltNames build() {
    final _$result = _$v ??
        new _$BuiltNames._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'BuiltNames', 'name'),
            gender: gender,
            probability: BuiltValueNullFieldError.checkNotNull(
                probability, 'BuiltNames', 'probability'),
            count: BuiltValueNullFieldError.checkNotNull(
                count, 'BuiltNames', 'count'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
