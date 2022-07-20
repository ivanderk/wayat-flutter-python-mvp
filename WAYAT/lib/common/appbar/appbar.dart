import 'package:flutter/material.dart';
import 'package:wayat/common/appbar/switch_location.dart';
import 'package:wayat/common/appbar/profile_button.dart';

class Appbar extends StatelessWidget with PreferredSizeWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: const ProfileButton(),
        backgroundColor: const Color.fromARGB(255, 98, 0, 116),
        title: const Text("Wayat"),
        actions: const <Widget>[LocationSwitch()]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}