import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mstblc/common/values/colors.dart';
import 'package:mstblc/screens/home/bloc/home_screen_bloc.dart';
import 'package:mstblc/screens/home/widgets/home_page_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppbar(),
      body: BlocBuilder<HomeScreenBloc, HomeScreenStates>(
        builder: (context, state) {
          return Container(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: homePageText("Pankaj Gupta")),
                SliverToBoxAdapter(child: searchView()),
                SliverToBoxAdapter(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 10),
                  child: sliderView(context, state),
                )),
                const SliverToBoxAdapter(child: SizedBox(height: 15)),
                SliverToBoxAdapter(child: menuView()),
                SliverPadding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 7),
                  sliver: SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 10,
                            childAspectRatio: 1.6),
                    delegate: SliverChildBuilderDelegate(
                      childCount: 4,
                      (context, index) {
                        return GestureDetector(
                            onTap: () {}, child: courseGrid());
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
