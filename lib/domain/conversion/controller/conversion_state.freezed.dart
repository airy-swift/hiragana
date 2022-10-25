// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'conversion_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConversionState {
  AsyncValue<Conversion?> get conversion => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConversionStateCopyWith<ConversionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversionStateCopyWith<$Res> {
  factory $ConversionStateCopyWith(
          ConversionState value, $Res Function(ConversionState) then) =
      _$ConversionStateCopyWithImpl<$Res, ConversionState>;
  @useResult
  $Res call({AsyncValue<Conversion?> conversion});
}

/// @nodoc
class _$ConversionStateCopyWithImpl<$Res, $Val extends ConversionState>
    implements $ConversionStateCopyWith<$Res> {
  _$ConversionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversion = null,
  }) {
    return _then(_value.copyWith(
      conversion: null == conversion
          ? _value.conversion
          : conversion // ignore: cast_nullable_to_non_nullable
              as AsyncValue<Conversion?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConversionStateCopyWith<$Res>
    implements $ConversionStateCopyWith<$Res> {
  factory _$$_ConversionStateCopyWith(
          _$_ConversionState value, $Res Function(_$_ConversionState) then) =
      __$$_ConversionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<Conversion?> conversion});
}

/// @nodoc
class __$$_ConversionStateCopyWithImpl<$Res>
    extends _$ConversionStateCopyWithImpl<$Res, _$_ConversionState>
    implements _$$_ConversionStateCopyWith<$Res> {
  __$$_ConversionStateCopyWithImpl(
      _$_ConversionState _value, $Res Function(_$_ConversionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversion = null,
  }) {
    return _then(_$_ConversionState(
      conversion: null == conversion
          ? _value.conversion
          : conversion // ignore: cast_nullable_to_non_nullable
              as AsyncValue<Conversion?>,
    ));
  }
}

/// @nodoc

class _$_ConversionState implements _ConversionState {
  const _$_ConversionState({this.conversion = const AsyncValue.data(null)});

  @override
  @JsonKey()
  final AsyncValue<Conversion?> conversion;

  @override
  String toString() {
    return 'ConversionState(conversion: $conversion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConversionState &&
            (identical(other.conversion, conversion) ||
                other.conversion == conversion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConversionStateCopyWith<_$_ConversionState> get copyWith =>
      __$$_ConversionStateCopyWithImpl<_$_ConversionState>(this, _$identity);
}

abstract class _ConversionState implements ConversionState {
  const factory _ConversionState({final AsyncValue<Conversion?> conversion}) =
      _$_ConversionState;

  @override
  AsyncValue<Conversion?> get conversion;
  @override
  @JsonKey(ignore: true)
  _$$_ConversionStateCopyWith<_$_ConversionState> get copyWith =>
      throw _privateConstructorUsedError;
}
