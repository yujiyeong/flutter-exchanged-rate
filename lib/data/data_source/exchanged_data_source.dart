import 'dart:convert';

import 'package:exchanged_app/data/data_source/.apiKey.dart';
import '../dto/exchanged_dto.dart';
import 'package:http/http.dart' as http;

class ExchangedApi {
  // final String _baseUrl = 'latest/USD';
  final String _apiKey = apiKey;
  final String _baseUrl = 'https://v6.exchangerate-api.com/v6';
  final http.Client _client;

  const ExchangedApi({
    required http.Client client,
  }) : _client = client;

  Future<ExchangedDto> getExchangedRate(String query) async {
    try {
      final http.Response response =
          await _client.get(Uri.parse('$_baseUrl$_apiKey/latest/$query'));

      Map<String, dynamic> json = response.statusCode == 200
          ? jsonDecode(utf8.decode(response.bodyBytes))
          : throw Exception(
              'Request failed with status: ${response.statusCode}.');

      return ExchangedDto.fromJson(json);
    } catch (error) {
      throw Exception('unknownError: $error');
    }
  }
}
