import 'package:gpt_chat_app/src/repository/chat_api_repository.dart';

import '../ui/chaPage/chat_screen_presenter.dart';
import 'package:get/get.dart';

class GetXChatPagePresenter extends GetxController
    implements ChatPagePresenter {
  final ApiRepository apiRepository = ApiRepository();

  final _menssage = Rx<String?>(null);
  @override
  Stream<String?> get menssageStream => _menssage.stream;

  @override
  Future<String> requestResponse(String response) async {
    return apiRepository.generateResponse(response);
  }
}
