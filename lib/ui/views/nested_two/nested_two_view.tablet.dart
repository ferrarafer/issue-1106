import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'nested_two_viewmodel.dart';

class NestedTwoViewTablet extends ViewModelWidget<NestedTwoViewModel> {
  const NestedTwoViewTablet({super.key});

  @override
  Widget build(BuildContext context, NestedTwoViewModel viewModel) {
    return Scaffold(
      body: Center(
        child: Text(
          'NESTED TWO - Page ID: ${viewModel.pageId}',
          style: const TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
