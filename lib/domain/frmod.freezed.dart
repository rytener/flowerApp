// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'frmod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyModal {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyModalCopyWith<MyModal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyModalCopyWith<$Res> {
  factory $MyModalCopyWith(MyModal value, $Res Function(MyModal) then) =
      _$MyModalCopyWithImpl<$Res, MyModal>;
  @useResult
  $Res call({String id, String name, int? age});
}

/// @nodoc
class _$MyModalCopyWithImpl<$Res, $Val extends MyModal>
    implements $MyModalCopyWith<$Res> {
  _$MyModalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? age = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyModalImplCopyWith<$Res> implements $MyModalCopyWith<$Res> {
  factory _$$MyModalImplCopyWith(
          _$MyModalImpl value, $Res Function(_$MyModalImpl) then) =
      __$$MyModalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, int? age});
}

/// @nodoc
class __$$MyModalImplCopyWithImpl<$Res>
    extends _$MyModalCopyWithImpl<$Res, _$MyModalImpl>
    implements _$$MyModalImplCopyWith<$Res> {
  __$$MyModalImplCopyWithImpl(
      _$MyModalImpl _value, $Res Function(_$MyModalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? age = freezed,
  }) {
    return _then(_$MyModalImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$MyModalImpl implements _MyModal {
  const _$MyModalImpl({required this.id, required this.name, this.age});

  @override
  final String id;
  @override
  final String name;
  @override
  final int? age;

  @override
  String toString() {
    return 'MyModal(id: $id, name: $name, age: $age)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyModalImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyModalImplCopyWith<_$MyModalImpl> get copyWith =>
      __$$MyModalImplCopyWithImpl<_$MyModalImpl>(this, _$identity);
}

abstract class _MyModal implements MyModal {
  const factory _MyModal(
      {required final String id,
      required final String name,
      final int? age}) = _$MyModalImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  int? get age;
  @override
  @JsonKey(ignore: true)
  _$$MyModalImplCopyWith<_$MyModalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
