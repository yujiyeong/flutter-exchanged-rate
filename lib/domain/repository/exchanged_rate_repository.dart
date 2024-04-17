import '../model/exchanged_rate.dart';

abstract interface class ExchangedRateRepository {
  Future<ExchangedRate> getExchangedRate(String query);
}
