import 'package:flutter/material.dart';

AppBar buildSettingAppBar() {
  return AppBar(
    centerTitle: true,
    title: Container(
      child: Text(
        "Settings",
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
