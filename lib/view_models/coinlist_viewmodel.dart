import 'package:flutter/material.dart';
import 'package:flutter_mvvm_basic_sample/model/crypto.dart';
import 'package:flutter_mvvm_basic_sample/service/api/network_api.dart';
import 'package:flutter_mvvm_basic_sample/service/api/web_api_fake.dart';
import 'package:flutter_mvvm_basic_sample/service/api/web_api_implementation.dart';

class CoinlistViewmodel extends ChangeNotifier {
  final NetworkApi _webApi = WebApiFake();

  List<Crypto> cryptoList = [];

  void loadData() async {
    cryptoList = await _webApi.getAllCryptos();
    notifyListeners();
  }
}
