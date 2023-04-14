import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/strings.dart';
import '../../chaPage/components/chat_screen.dart';
import 'home_page_presenter.dart';
import 'lets_button_chat_component.dart';

class HomePage extends StatelessWidget {
  final HomePagePresenter presenter;

  const HomePage({
    super.key,
    required this.presenter,
  });
  @override
  Widget build(BuildContext context) {
    TextApp text = TextApp();

    presenter.navigateToStream.listen((page) {
      if (page?.isNotEmpty == true) {
        Get.offAllNamed(page!, arguments: presenter.navigationChat());
      }
    });
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Image.asset(
                      'lib/src/utils/assets/robo_chat.png',
                      fit: BoxFit.contain,
                    )),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: const EdgeInsets.all(10.0),
              child: Text(
                text.letsTalk,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            LetsButtonChat(presenter: presenter, text: text)
          ],
        ),
      ),
    );
  }
}
