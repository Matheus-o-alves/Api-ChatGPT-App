import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../ui/homePage/components/home_page_presenter.dart';

class GetXHomePresenter extends GetxController implements HomePagePresenter {
  final _navigateTo = Rx<String?>(null);

  @override
  Stream<String?> get navigateToStream => _navigateTo.stream;

  @override
  Future<void> navigationChat() async {
    _navigateTo.value = '/chat';
  }
}
