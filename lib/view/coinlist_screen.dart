import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mvvm_basic_sample/view_models/coinlist_viewmodel.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

class CoinListScreen extends StatefulWidget {
  const CoinListScreen({super.key});

  @override
  State<CoinListScreen> createState() => _CoinListScreenState();
}

class _CoinListScreenState extends State<CoinListScreen> {
  final _viewModel = GetIt.I.get<CoinlistViewmodel>();

  @override
  void initState() {
    super.initState();
    _viewModel.loadData();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => _viewModel,
      child: Consumer<CoinlistViewmodel>(
        builder: ((context, viewModel, child) {
          return getUi(viewModel);
        }),
      ),
    );
  }

  Widget getUi(CoinlistViewmodel viewModel) {
    return Scaffold(
      body: ListView.builder(
        itemCount: viewModel.cryptoList.length ?? 0,
        itemBuilder: (context, index) {
          return Text(viewModel.cryptoList[index].name ?? '');
        },
      ),
    );
  }
}
