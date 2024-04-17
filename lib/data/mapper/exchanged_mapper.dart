import 'package:exchanged_app/data/dto/exchanged_dto.dart';

import '../../domain/model/exchanged_rate.dart';

extension ToExchangedRate on ExchangedDto {
  ExchangedRate toExchanged() {
    return ExchangedRate(
      baseCode: baseCode ?? '',
      conversionRates: toMap(conversionRates!.toJson()),
      timeLastUpdateUtc: timeLastUpdateUtc ?? '',
    );
  }
}

// Map<String, dynamic>을 Map<String, double>로
Map<String, double> toMap(Map<String, dynamic> map) {
  Map<String, double> conversionRatesMap = {};

  map.forEach((key, value) {
    conversionRatesMap[key] = value.toDouble();
  });

  return conversionRatesMap;
}
