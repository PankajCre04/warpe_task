import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mstblc/common/values/colors.dart';

Widget buildThirdPartyLogin(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(top: 40, bottom: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _resuableIcons("google"),
        _resuableIcons("apple"),
        _resuableIcons("facebook"),
      ],
    ),
  );
}

Widget _resuableIcons(String iconName) {
  return GestureDetector(
    onTap: () {},
    child: Image.asset(
      "assets/icons/$iconName.png",
      height: 55,
      width: 55,
    ),
  );
}

Widget forgotPassowrd() {
  return SizedBox(
    child: GestureDetector(
      onTap: () {},
      child: const Text(
        "Forgot Password",
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          decoration: TextDecoration.underline,
          decorationColor: Colors.black,
        ),
      ),
    ),
  );
}
