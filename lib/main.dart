import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:gpt_chat_app/src/factories/home_page_factory.dart';

import 'src/factories/chat_view_page_factory.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ChatGpt Flutter',
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      initialRoute: '/home',
      getPages: [
        GetPage(
          name: '/home',
          page: makeHomePage,
          transition: Transition.fadeIn,
        ),
        GetPage(
          name: '/chat',
          page: makeChatPage,
          transition: Transition.fadeIn,
        )
      ],
    );
  }
}
