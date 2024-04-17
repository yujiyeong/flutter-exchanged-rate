// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchanged_rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExchangedRateImpl _$$ExchangedRateImplFromJson(Map<String, dynamic> json) =>
    _$ExchangedRateImpl(
      baseCode: json['baseCode'] as String,
      timeLastUpdateUtc: json['timeLastUpdateUtc'] as String,
      conversionRates: (json['conversionRates'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$$ExchangedRateImplToJson(_$ExchangedRateImpl instance) =>
    <String, dynamic>{
      'baseCode': instance.baseCode,
      'timeLastUpdateUtc': instance.timeLastUpdateUtc,
      'conversionRates': instance.conversionRates,
    };
