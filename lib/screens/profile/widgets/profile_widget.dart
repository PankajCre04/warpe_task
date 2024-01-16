import 'package:flutter/material.dart';
import 'package:mstblc/common/routes/names.dart';
import 'package:mstblc/common/values/colors.dart';

AppBar profileAppBar() {
  return AppBar(
    title: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 18,
            height: 12,
            child: Image.asset("assets/icons/menu.png"),
          ),
          const Text(
            "Profile",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryText,
            ),
          ),
          SizedBox(
            width: 24,
            height: 24,
            child: Image.asset("assets/icons/more-vertical.png"),
          ),
        ],
      ),
    ),
  );
}

Widget profileIconButton() {
  return Container(
    height: 100,
    width: 100,
    alignment: Alignment.bottomRight,
    padding: const EdgeInsets.only(right: 6, bottom: 5),
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/icons/headpic.png"),
      ),
    ),
    child: Image.asset("assets/icons/edit_3.png"),
  );
}

var imageInfo = <String, String>{
  "Settings": "settings.png",
  "Payment Details": "credit-card.png",
  "Achievements": "award.png",
  "Love": "heart(1).png",
  "Reminders": "cube.png",
};

Widget buildListView(BuildContext context) {
  return Column(
    children: [
      const SizedBox(height: 20),
      ...List.generate(
          imageInfo.length,
          (index) => GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutesNames.SETTINGS);
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 20, top: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20, right: 10),
                        width: 40,
                        height: 40,
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.primaryElement,
                        ),
                        child: Image.asset(
                            "assets/icons/${imageInfo.values.elementAt(index)}"),
                      ),
                      Text(
                        imageInfo.keys.elementAt(index),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryText,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
    ],
  );
}
