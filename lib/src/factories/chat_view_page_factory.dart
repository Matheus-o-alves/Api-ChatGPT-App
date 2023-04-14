import 'package:flutter/material.dart';

import '../ui/chaPage/chat_screen_presenter.dart';
import '../ui/chaPage/components/chat_screen.dart';
import 'chat_page_presenter_factory.dart';

Widget makeChatPage() {
  return ChatView(presenter: makeGetXChatPagePresenter());
}
