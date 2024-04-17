import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchanged_rate.freezed.dart';

part 'exchanged_rate.g.dart';

@freezed
class ExchangedRate with _$ExchangedRate {
  const factory ExchangedRate({
    required String baseCode,
    required String timeLastUpdateUtc,
    required Map<String, double> conversionRates,
  }) = _ExchangedRate;

  factory ExchangedRate.fromJson(Map<String, Object?> json) => _$ExchangedRateFromJson(json);
}