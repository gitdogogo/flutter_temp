import 'package:flutter/material.dart';
import 'package:huibobo/components/header.dart';

import 'deport_ui.dart';

class Depot extends StatelessWidget {
  const Depot({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        title: '仓库页',
      ),
      body: DepotUI(),
    );
  }
}
