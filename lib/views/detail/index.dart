import 'package:flutter/material.dart';
import 'package:huibobo/components/header.dart';

import 'detail_ui.dart';

class Detail extends StatelessWidget {
  const Detail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        title: '详情页',
      ),
      body: DetailUI(),
    );
  }
}
