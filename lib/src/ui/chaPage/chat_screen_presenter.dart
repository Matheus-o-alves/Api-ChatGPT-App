abstract class ChatPagePresenter {
  Future<String> requestResponse(String response);
  Stream<String?> get menssageStream;
}
