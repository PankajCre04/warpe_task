import 'package:flutter/material.dart';
import 'package:mstblc/screens/profile/widgets/profile_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppBar(),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              profileIconButton(),
              buildListView(context),
            ],
          ),
        ),
      ),
    );
  }
}
