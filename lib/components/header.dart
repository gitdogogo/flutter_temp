import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool isShowReturnArrow;
  final Widget leading;
  final List<Widget> actions;
  const Header(
      {@required this.title,
      this.leading,
      this.isShowReturnArrow = true,
      this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: isShowReturnArrow,
      leading: leading,
      elevation: 0,
      title: Text(title),
      actions: actions,
      centerTitle: true, // 标题是否居中对齐
      backgroundColor: Colors.blueAccent,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(48);
}
