import 'package:exchanged_app/domain/model/conversion_rate_list.dart';
import 'package:exchanged_app/domain/model/exchanged_rate.dart';
import 'package:exchanged_app/domain/repository/exchanged_rate_repository.dart';
import 'package:exchanged_app/main.dart';
import 'package:flutter/cupertino.dart';

class ExchangedRateScreenViewModel with ChangeNotifier {
  late String requestMoney;
  late String requestCountryValue;

  late String resultMoney;
  late String resultCountryValue;

  //API DATA
  final ExchangedRateRepository _exchangedRateRepository;
  ExchangedRate? _exchangedRateData;

  ExchangedRateScreenViewModel(this._exchangedRateRepository) {
    requestMoney = '1';
    requestCountryValue = 'USD';
    resultMoney = '';
    resultCountryValue = 'KRW';

    requestExchangeRate(requestCountryValue);
  }

  void requestExchangeRate(String changeCountry) async {
    logger.i('requestExchangeRate call !!');
    logger.d('changeCountry >> $changeCountry');
    requestCountryValue = changeCountry;
    logger.v('requestCountryValue >> $requestCountryValue');

    notifyListeners();
    //API call
    _exchangedRateData =
        await _exchangedRateRepository.getExchangedRate(requestCountryValue);

    logger.v('_exchangedRateData >> $_exchangedRateData');

    exchangedRate(requestMoney);
  }

  void exchangedRate(String requestMoney) {
    logger.v('exchangedRate call !!');
    this.requestMoney = requestMoney;
    notifyListeners();
    //exchange
    //requestMoney - API DATA -> resultMoney
    //requestCountry + requestMoney + resultCountry - API DATA -> resultMoney
    if (_exchangedRateData != null) {
      try {
        resultMoney =
            "${double.parse(requestMoney) * _exchangedRateData!.conversionRates[resultCountryValue]!}";
      } catch (error) {
        resultMoney = '';
      }
    }

    // resultMoney = '1000';

    notifyListeners();
  }

  void changeResultCountry(String resultCountryValue) {
    logger.v('changeResultCountry call');
    logger.v('resultCountryValue >> $resultCountryValue');

    this.resultCountryValue = resultCountryValue;
    logger.v('resultCountryValue >> $resultCountryValue');
    exchangedRate(requestMoney);
    logger.v('requestMoney >> $requestMoney');
  }
}
