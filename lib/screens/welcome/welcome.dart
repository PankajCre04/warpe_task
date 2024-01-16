import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mstblc/common/routes/names.dart';
import 'package:mstblc/common/values/constant.dart';
import 'package:mstblc/global.dart';
import 'package:mstblc/screens/sign_in/signin_screen.dart';
import 'package:mstblc/screens/welcome/welcome_bloc/welcome_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../common/values/colors.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                BlocBuilder<WelcomeBloc, WelcomeState>(
                  builder: (context, state) {
                    return PageView(
                      controller: _pageController,
                      onPageChanged: (index) {
                        state.page = index;
                        BlocProvider.of<WelcomeBloc>(context)
                            .add(WelcomeEvent());
                      },
                      children: [
                        welcomeWidget("Next", 1),
                        welcomeWidget("Get Started", 2),
                        welcomeWidget("Welcome", 3),
                      ],
                    );
                  },
                ),
                GestureDetector(
                  onTap: () {
                    Global.storageService.setBool(
                        AppConstants.STORAGE_DEVICE_OPEN_FIRST_TIME, true);
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return SignInScreen();
                    }));
                  },
                  child: Container(
                    height: 45,
                    width: double.maxFinite,
                    margin: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primaryElement),
                    child: const Text(
                      "MOVE",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }

  Widget welcomeWidget(String text, int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            height: 350,
            width: double.maxFinite,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.primaryElement),
            alignment: Alignment.center,
            child: Image.asset("assets/images/reading.png")),
        const Text(
          "Always Fascinated Learning",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
        const Text(
          "Anywhere, anytime. This is at our discortion so study whenever you want.",
          style: TextStyle(
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.primaryElement),
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              letterSpacing: 1,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(height: 20),
        SmoothPageIndicator(
          count: 3,
          axisDirection: Axis.horizontal,
          effect: const SlideEffect(
              spacing: 8.0,
              radius: 4.0,
              dotWidth: 14.0,
              dotHeight: 10.0,
              paintStyle: PaintingStyle.stroke,
              strokeWidth: 1.5,
              dotColor: Colors.grey,
              activeDotColor: AppColors.primaryElement),
          controller: _pageController,
        )
      ],
    );
  }
}
