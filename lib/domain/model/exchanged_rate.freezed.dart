// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchanged_rate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExchangedRate _$ExchangedRateFromJson(Map<String, dynamic> json) {
  return _ExchangedRate.fromJson(json);
}

/// @nodoc
mixin _$ExchangedRate {
  String get baseCode => throw _privateConstructorUsedError;
  String get timeLastUpdateUtc => throw _privateConstructorUsedError;
  Map<String, double> get conversionRates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExchangedRateCopyWith<ExchangedRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangedRateCopyWith<$Res> {
  factory $ExchangedRateCopyWith(
          ExchangedRate value, $Res Function(ExchangedRate) then) =
      _$ExchangedRateCopyWithImpl<$Res, ExchangedRate>;
  @useResult
  $Res call(
      {String baseCode,
      String timeLastUpdateUtc,
      Map<String, double> conversionRates});
}

/// @nodoc
class _$ExchangedRateCopyWithImpl<$Res, $Val extends ExchangedRate>
    implements $ExchangedRateCopyWith<$Res> {
  _$ExchangedRateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseCode = null,
    Object? timeLastUpdateUtc = null,
    Object? conversionRates = null,
  }) {
    return _then(_value.copyWith(
      baseCode: null == baseCode
          ? _value.baseCode
          : baseCode // ignore: cast_nullable_to_non_nullable
              as String,
      timeLastUpdateUtc: null == timeLastUpdateUtc
          ? _value.timeLastUpdateUtc
          : timeLastUpdateUtc // ignore: cast_nullable_to_non_nullable
              as String,
      conversionRates: null == conversionRates
          ? _value.conversionRates
          : conversionRates // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExchangedRateImplCopyWith<$Res>
    implements $ExchangedRateCopyWith<$Res> {
  factory _$$ExchangedRateImplCopyWith(
          _$ExchangedRateImpl value, $Res Function(_$ExchangedRateImpl) then) =
      __$$ExchangedRateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String baseCode,
      String timeLastUpdateUtc,
      Map<String, double> conversionRates});
}

/// @nodoc
class __$$ExchangedRateImplCopyWithImpl<$Res>
    extends _$ExchangedRateCopyWithImpl<$Res, _$ExchangedRateImpl>
    implements _$$ExchangedRateImplCopyWith<$Res> {
  __$$ExchangedRateImplCopyWithImpl(
      _$ExchangedRateImpl _value, $Res Function(_$ExchangedRateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseCode = null,
    Object? timeLastUpdateUtc = null,
    Object? conversionRates = null,
  }) {
    return _then(_$ExchangedRateImpl(
      baseCode: null == baseCode
          ? _value.baseCode
          : baseCode // ignore: cast_nullable_to_non_nullable
              as String,
      timeLastUpdateUtc: null == timeLastUpdateUtc
          ? _value.timeLastUpdateUtc
          : timeLastUpdateUtc // ignore: cast_nullable_to_non_nullable
              as String,
      conversionRates: null == conversionRates
          ? _value._conversionRates
          : conversionRates // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExchangedRateImpl implements _ExchangedRate {
  const _$ExchangedRateImpl(
      {required this.baseCode,
      required this.timeLastUpdateUtc,
      required final Map<String, double> conversionRates})
      : _conversionRates = conversionRates;

  factory _$ExchangedRateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExchangedRateImplFromJson(json);

  @override
  final String baseCode;
  @override
  final String timeLastUpdateUtc;
  final Map<String, double> _conversionRates;
  @override
  Map<String, double> get conversionRates {
    if (_conversionRates is EqualUnmodifiableMapView) return _conversionRates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_conversionRates);
  }

  @override
  String toString() {
    return 'ExchangedRate(baseCode: $baseCode, timeLastUpdateUtc: $timeLastUpdateUtc, conversionRates: $conversionRates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExchangedRateImpl &&
            (identical(other.baseCode, baseCode) ||
                other.baseCode == baseCode) &&
            (identical(other.timeLastUpdateUtc, timeLastUpdateUtc) ||
                other.timeLastUpdateUtc == timeLastUpdateUtc) &&
            const DeepCollectionEquality()
                .equals(other._conversionRates, _conversionRates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, baseCode, timeLastUpdateUtc,
      const DeepCollectionEquality().hash(_conversionRates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExchangedRateImplCopyWith<_$ExchangedRateImpl> get copyWith =>
      __$$ExchangedRateImplCopyWithImpl<_$ExchangedRateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExchangedRateImplToJson(
      this,
    );
  }
}

abstract class _ExchangedRate implements ExchangedRate {
  const factory _ExchangedRate(
          {required final String baseCode,
          required final String timeLastUpdateUtc,
          required final Map<String, double> conversionRates}) =
      _$ExchangedRateImpl;

  factory _ExchangedRate.fromJson(Map<String, dynamic> json) =
      _$ExchangedRateImpl.fromJson;

  @override
  String get baseCode;
  @override
  String get timeLastUpdateUtc;
  @override
  Map<String, double> get conversionRates;
  @override
  @JsonKey(ignore: true)
  _$$ExchangedRateImplCopyWith<_$ExchangedRateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
