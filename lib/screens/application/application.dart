import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mstblc/common/values/colors.dart';
import 'package:mstblc/screens/application/bloc/application_bloc.dart';
import 'package:mstblc/screens/application/widget/application_widget.dart';

class ApplicationPages extends StatefulWidget {
  const ApplicationPages({super.key});

  @override
  State<ApplicationPages> createState() => _ApplicationPagesState();
}

class _ApplicationPagesState extends State<ApplicationPages> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationBloc, AppStates>(
      builder: (context, state) {
        return Container(
          color: Colors.white,
          child: SafeArea(
            child: Scaffold(
              body: buildPage(state.index),
              bottomNavigationBar: BottomNavigationBar(
                elevation: 10,
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                selectedItemColor: AppColors.primaryElement,
                unselectedItemColor: AppColors.primaryFourElementText,
                currentIndex: state.index,
                onTap: (value) {
                  context
                      .read<ApplicationBloc>()
                      .add(TriggerApplicationEvent(value));
                },
                items: bottomTabs(),
              ),
            ),
          ),
        );
      },
    );
  }
}
