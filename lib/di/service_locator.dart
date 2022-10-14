import 'package:flutter_mvvm_basic_sample/service/api/network_api.dart';
import 'package:flutter_mvvm_basic_sample/service/api/web_api_fake.dart';
import 'package:flutter_mvvm_basic_sample/service/api/web_api_implementation.dart';
import 'package:flutter_mvvm_basic_sample/view_models/coinlist_viewmodel.dart';
import 'package:get_it/get_it.dart';

void initServiceLocator() {
  GetIt.I.registerSingleton<NetworkApi>(WebApiFake());
  GetIt.I.registerFactory<CoinlistViewmodel>(() => CoinlistViewmodel());
}
