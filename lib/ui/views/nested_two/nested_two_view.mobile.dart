import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'nested_two_viewmodel.dart';

class NestedTwoViewMobile extends ViewModelWidget<NestedTwoViewModel> {
  const NestedTwoViewMobile({super.key});

  @override
  Widget build(BuildContext context, NestedTwoViewModel viewModel) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hello, MOBILE UI!',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
