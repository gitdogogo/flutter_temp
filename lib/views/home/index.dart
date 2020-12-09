import 'package:flutter/material.dart';
import 'package:huibobo/components/header.dart';

import 'home_ui.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        title: '首页',
      ),
      body: HomeUI(),
    );
  }
}
