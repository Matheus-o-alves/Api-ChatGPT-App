import 'package:flutter/material.dart';

import '../presenter/getx_home_presenter.dart';
import '../ui/homePage/components/home.dart';
import '../ui/homePage/components/home_page_presenter.dart';
import '../utils/strings.dart';

Widget makeHomePage() {
  return HomePage(
    presenter: GetXHomePresenter(),
  );
}
