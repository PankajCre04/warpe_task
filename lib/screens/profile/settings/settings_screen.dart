import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mstblc/common/routes/names.dart';
import 'package:mstblc/common/values/constant.dart';
import 'package:mstblc/screens/application/bloc/application_bloc.dart';
import 'package:mstblc/screens/profile/settings/bloc/settings_bloc.dart';
import 'package:mstblc/screens/profile/settings/widget/settings_widget.dart';

import '../../../global.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  void removeUserData(BuildContext context) {
    context.read<ApplicationBloc>().add(const TriggerApplicationEvent(0));
    Global.storageService.remove(AppConstants.STORAGE_USER_TOKEN_KEY);

    Navigator.of(context)
        .pushNamedAndRemoveUntil(AppRoutesNames.SIGNIN, (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildSettingAppBar(),
      body: SingleChildScrollView(
        child: BlocBuilder<SettingsBloc, SettingState>(
          builder: (context, state) {
            return Container(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text("Confirm Logout"),
                              content: const Text("confirm logout"),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text("Cancel"),
                                ),
                                TextButton(
                                  onPressed: () => removeUserData(context),
                                  child: const Text("Confirm"),
                                ),
                              ],
                            );
                          });
                    },
                    child: Container(
                      height: 90,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/icons/Logout.png"),
                      )),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
