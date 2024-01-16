import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mstblc/common/values/colors.dart';
import 'package:mstblc/screens/home/bloc/home_screen_bloc.dart';

AppBar buildAppbar() {
  return AppBar(
    title: Container(
      margin: const EdgeInsets.only(left: 7, right: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 12,
            width: 15,
            child: Image.asset("assets/icons/menu.png"),
          ),
          GestureDetector(
            child: Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/icons/person.png"),
              )),
            ),
          )
        ],
      ),
    ),
  );
}

Widget homePageText(String text,
    {Color? color = AppColors.primaryText, double top = 20}) {
  return Padding(
    padding: EdgeInsets.only(top: top, left: 20),
    child: Text(
      text,
      style: TextStyle(
          fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
    ),
  );
}

Widget searchView() {
  return Row(
    children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        padding: const EdgeInsets.all(10),
        height: 80,
        width: 300,
        decoration: BoxDecoration(
          color: AppColors.primaryBackground,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: AppColors.primaryFourElementText),
        ),
        child: Center(
          child: TextField(
            onChanged: (_) {},
            style: const TextStyle(
              color: AppColors.primarySecondaryElementText,
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
            keyboardType: TextInputType.multiline,
            autocorrect: false,
            decoration: const InputDecoration(
              hintText: "Search",
              prefixIcon: Icon(Icons.search),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ),
      GestureDetector(
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.purple[900],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(
            "assets/icons/options.png",
            height: 40,
            width: 40,
          ),
        ),
      )
    ],
  );
}

Widget sliderView(BuildContext context, HomeScreenStates states) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        width: 325,
        height: 160,
        child: PageView(
          onPageChanged: (value) {
            context.read<HomeScreenBloc>().add(HomePageDots(value));
          },
          children: [
            _sliderContainer(),
            _sliderContainer(),
            _sliderContainer(),
          ],
        ),
      ),
      DotsIndicator(
        dotsCount: 3,
        position: states.index,
        decorator: const DotsDecorator(
          color: AppColors.primaryThreeElementText,
          activeColor: AppColors.primaryElement,
          size: Size.square(8),
          activeSize: Size.square(15),
        ),
      )
    ],
  );
}

Widget _sliderContainer({String path = "assets/icons/Art.png"}) {
  return Container(
    width: 325,
    height: 160,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(path),
      ),
    ),
  );
}

Widget menuView() {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.only(left: 15, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _reusableMenuText("Choose your course", AppColors.primaryText),
            GestureDetector(
                onTap: () {}, child: _reusableMenuText("see all", Colors.grey)),
          ],
        ),
      ),
      Row(
        children: [
          _reusableMenuButton("All"),
          _reusableMenuButton("Popular",
              textColor: AppColors.primaryThreeElementText,
              backgroundColor: Colors.white),
          _reusableMenuButton("Newest",
              textColor: AppColors.primaryThreeElementText,
              backgroundColor: Colors.white),
        ],
      )
    ],
  );
}

Widget _reusableMenuButton(
  String text, {
  Color textColor = AppColors.primaryElementText,
  Color backgroundColor = AppColors.primaryElement,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    margin: const EdgeInsets.only(left: 15, top: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: backgroundColor,
      border: Border.all(color: AppColors.primaryElement),
    ),
    child: _reusableMenuSubtitleText(text, textColor),
  );
}

Widget _reusableMenuSubtitleText(String text, Color? color) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 16,
      color: color,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget _reusableMenuText(String text, Color? color) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 18,
      color: color,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget courseGrid() {
  return Container(
    padding: const EdgeInsets.only(left: 10, bottom: 5),
    decoration: const BoxDecoration(
      color: Colors.white,
      image: DecorationImage(
        image: AssetImage("assets/icons/Image(2).png"),
      ),
    ),
    child: const Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Best Course For IT",
          maxLines: 1,
          style: TextStyle(
            color: Colors.white,
            overflow: TextOverflow.fade,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Best Flutter Courses",
          maxLines: 1,
          style: TextStyle(
            color: Colors.white,
            overflow: TextOverflow.fade,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
      ],
    ),
  );
}
