import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'nested_viewmodel.dart';

class NestedViewDesktop extends ViewModelWidget<NestedViewModel> {
  const NestedViewDesktop({super.key});

  @override
  Widget build(BuildContext context, NestedViewModel viewModel) {
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
