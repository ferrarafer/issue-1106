import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'nested_two_view.desktop.dart';
import 'nested_two_view.tablet.dart';
import 'nested_two_view.mobile.dart';
import 'nested_two_viewmodel.dart';

class NestedTwoView extends StackedView<NestedTwoViewModel> {
  final String pageId;
  const NestedTwoView({
    super.key,
    @pathParam required this.pageId,
  });

  @override
  Widget builder(
    BuildContext context,
    NestedTwoViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const NestedTwoViewMobile(),
      tablet: (_) => const NestedTwoViewTablet(),
      desktop: (_) => const NestedTwoViewDesktop(),
    );
  }

  @override
  NestedTwoViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NestedTwoViewModel(pageId: pageId);
}
