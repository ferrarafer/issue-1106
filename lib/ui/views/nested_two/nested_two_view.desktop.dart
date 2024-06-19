import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'nested_two_viewmodel.dart';

class NestedTwoViewDesktop extends ViewModelWidget<NestedTwoViewModel> {
  const NestedTwoViewDesktop({super.key});

  @override
  Widget build(BuildContext context, NestedTwoViewModel viewModel) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hello, DESKTOP UI!',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
