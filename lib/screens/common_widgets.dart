import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/values/colors.dart';

Widget LoginAndRegisterButton(
    String buttonName, String buttonType, void Function()? func) {
  return GestureDetector(
    onTap: func,
    child: Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: buttonType == "login"
            ? Border.all(color: Colors.transparent)
            : Border.all(color: Colors.black),
        color: buttonType == "login"
            ? AppColors.primaryElement
            : AppColors.primaryBackground,
      ),
      alignment: Alignment.center,
      child: Text(
        buttonName,
        style: TextStyle(
          color: buttonType == "login"
              ? AppColors.primaryBackground
              : Colors.black,
          letterSpacing: 1,
          fontSize: 18,
        ),
      ),
    ),
  );
}

Widget CommonTextField(String hintText, String textType, String iconName,
    void Function(String value)? func) {
  return Container(
    width: double.maxFinite,
    // height: 40,
    padding: const EdgeInsets.only(left: 10, right: 10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: AppColors.primaryFourElementText),
    ),
    child: Row(
      children: [
        SizedBox(
          height: 15,
          width: 15,
          child: Image.asset("assets/icons/$iconName.png"),
        ),
        Expanded(
          child: TextField(
            onChanged: (value) => func!(value),
            style: const TextStyle(
              color: AppColors.primarySecondaryElementText,
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
            keyboardType: TextInputType.multiline,
            autocorrect: false,
            obscureText: textType == "password" ? true : false,
            decoration: InputDecoration(
                hintText: hintText,
                border: const OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.transparent,
                )),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.transparent,
                )),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.transparent,
                )),
                hintStyle: TextStyle(
                  color: Colors.grey.withOpacity(0.5),
                )),
          ),
        ),
      ],
    ),
  );
}

Widget resuableText(String text) {
  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    child: Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 16,
        color: Colors.grey.withOpacity(0.5),
      ),
    ),
  );
}
