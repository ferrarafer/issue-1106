import 'package:pre_test_web/app/app.locator.dart';
import 'package:pre_test_web/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MainViewModel extends BaseViewModel {
  final _routerService = locator<RouterService>();

  void goToNestedOne() {
    _routerService.navigateToNestedView();
  }

  void goToNestedTwo() {
    _routerService.navigateToNestedTwoView(pageId: '123');
  }
}
