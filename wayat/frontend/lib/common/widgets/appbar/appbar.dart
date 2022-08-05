import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:wayat/common/theme/colors.dart';
import 'package:wayat/lang/lang_singleton.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({Key? key}) : super(key: key);

  final appLocalizations = GetIt.I.get<LangSingleton>().appLocalizations;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white10,
          statusBarBrightness: Brightness.dark, //Dark icons for Android
          statusBarIconBrightness: Brightness.dark //Dark icons for iOS
          ),
      backgroundColor: Colors.white10,
      elevation: 0,
      centerTitle: true,
      title: Text(
        appLocalizations.appTitle,
        style: const TextStyle(
            color: ColorTheme.primaryColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}