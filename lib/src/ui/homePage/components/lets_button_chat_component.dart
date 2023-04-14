import 'package:flutter/material.dart';

import '../../../utils/strings.dart';
import 'home_page_presenter.dart';

class LetsButtonChat extends StatelessWidget {
  const LetsButtonChat({
    super.key,
    required this.presenter,
    required this.text,
  });

  final HomePagePresenter presenter;
  final TextApp text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: InkWell(
        onTap: () {
          presenter.navigationChat();
        },
        child: Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.orange,
            border: Border.all(width: 2, color: Colors.white),
          ),
          child: Center(
            child: Text(
              text.let,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
