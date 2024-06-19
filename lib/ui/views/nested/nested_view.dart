import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'nested_view.desktop.dart';
import 'nested_view.tablet.dart';
import 'nested_view.mobile.dart';
import 'nested_viewmodel.dart';

class NestedView extends StackedView<NestedViewModel> {
  final String? query;
  const NestedView({
    super.key,
    @queryParam this.query,
  });

  @override
  Widget builder(
    BuildContext context,
    NestedViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const NestedViewMobile(),
      tablet: (_) => const NestedViewTablet(),
      desktop: (_) => const NestedViewDesktop(),
    );
  }

  @override
  NestedViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NestedViewModel();
}
