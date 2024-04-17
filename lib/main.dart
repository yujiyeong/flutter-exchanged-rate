import 'package:exchanged_app/data/data_source/exchanged_data_source.dart';
import 'package:exchanged_app/data/repository_impl/exchanged_rate_repository_impl.dart';
import 'package:exchanged_app/presentation/exchanged/exchanged_rate_screen.dart';
import 'package:exchanged_app/presentation/exchanged/exchanged_rate_view_model.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;


var logger = Logger(
  printer: PrettyPrinter(),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ChangeNotifierProvider(
          create: (_) => ExchangedRateScreenViewModel(
              ExchangedRateRepositoryImpl(
                  api: ExchangedApi(client: http.Client()))),
          child: const ExchangedRateScreen(),
        ));
  }
}
