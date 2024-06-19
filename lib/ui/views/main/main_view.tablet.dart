import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'main_viewmodel.dart';

class MainViewTablet extends ViewModelWidget<MainViewModel> {
  const MainViewTablet({super.key});

  @override
  Widget build(BuildContext context, MainViewModel viewModel) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              const Text(
                'MAIN VIEW',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w900,
                ),
              ),
              TextButton(
                onPressed: viewModel.goToNestedOne,
                child: const Text('Nested One'),
              ),
              TextButton(
                onPressed: viewModel.goToNestedTwo,
                child: const Text('Nested Two'),
              ),
            ],
          ),
          const Expanded(child: NestedRouter()),
        ],
      ),
    );
  }
}
