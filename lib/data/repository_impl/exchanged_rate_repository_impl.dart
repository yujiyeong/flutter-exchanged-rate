import 'package:exchanged_app/data/data_source/exchanged_data_source.dart';
import 'package:exchanged_app/data/mapper/exchanged_mapper.dart';
import 'package:exchanged_app/domain/model/exchanged_rate.dart';

import '../../domain/repository/exchanged_rate_repository.dart';
import '../dto/exchanged_dto.dart';

class ExchangedRateRepositoryImpl implements ExchangedRateRepository {
  final ExchangedApi _api;

  const ExchangedRateRepositoryImpl({
    required ExchangedApi api,
  }) : _api = api;

  @override
  Future<ExchangedRate> getExchangedRate(String query) async {
    final ExchangedDto dto = await _api.getExchangedRate(query);

    return dto.toExchanged();
  }
}
