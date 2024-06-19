import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'nested_viewmodel.dart';

class NestedViewTablet extends ViewModelWidget<NestedViewModel> {
  const NestedViewTablet({super.key});

  @override
  Widget build(BuildContext context, NestedViewModel viewModel) {
    return const Scaffold(
      body: Center(
        child: Text(
          'NESTED ONE',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
