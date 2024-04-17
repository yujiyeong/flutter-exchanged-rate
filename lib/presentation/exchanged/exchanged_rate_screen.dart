import 'package:exchanged_app/domain/model/conversion_rate_list.dart';
import 'package:exchanged_app/presentation/exchanged/exchanged_rate_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExchangedRateScreen extends StatefulWidget {
  const ExchangedRateScreen({super.key});

  @override
  State<ExchangedRateScreen> createState() => _ExchangedRateScreenState();
}

class _ExchangedRateScreenState extends State<ExchangedRateScreen> {
  final _requestTextEditingController = TextEditingController();
  final _resultTextEditingController = TextEditingController();

  String resultDropdownValue = conversionRatesList.first;

  @override
  void dispose() {
    _requestTextEditingController.dispose();
    _resultTextEditingController.dispose();super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ExchangedRateScreenViewModel>();

    _requestTextEditingController.text = viewModel.requestMoney;
    _resultTextEditingController.text = viewModel.resultMoney;
    

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('환율계산기'),
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 24.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 3,
                child: TextFormField(
                  controller: _requestTextEditingController,
                  onChanged: (String value) {
                    viewModel.exchangedRate(value);
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      borderSide: BorderSide(
                        color: Colors.greenAccent, // 테두리 색상 지정
                        width: 4.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      borderSide: BorderSide(
                        color: Colors.deepPurpleAccent, // 활성화된 테두리 색상 지정
                        width: 4.0,
                      ),
                    ),
                    hintText: 'money',
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: DropdownButton<String>(
                  hint: const Text('menu'),
                  value: viewModel.requestCountryValue,
                  onChanged: (String? value) {
                    if(value != null) {
                      viewModel.requestExchangeRate(value);
                    }
                  },
                  items: conversionRatesList
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  borderRadius: BorderRadius.circular(16.0),
                  icon: const Icon(Icons.attach_money),
                  iconSize: 16.0,
                ),
              ),
            ],
          ),
          SizedBox(height: 24.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 3,
                child: TextFormField(
                  controller: _resultTextEditingController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      borderSide: BorderSide(
                        color: Colors.greenAccent, // 테두리 색상 지정
                        width: 4.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      borderSide: BorderSide(
                        color: Colors.deepPurpleAccent, // 활성화된 테두리 색상 지정
                        width: 4.0,
                      ),
                    ),
                    hintText: 'money',

                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: DropdownButton<String>(
                  hint: const Text('menu'),
                  value: viewModel.resultCountryValue,
                  onChanged: (String? value) {
                    if(value != null) {
                      // viewModel.requestExchangeRate(value);
                      // viewModel.exchangedRate(requestMoney);
                      viewModel.changeResultCountry(value);
                    }
                  },
                  items: conversionRatesList
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  borderRadius: BorderRadius.circular(16.0),
                  icon: const Icon(Icons.attach_money),
                  iconSize: 16.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
