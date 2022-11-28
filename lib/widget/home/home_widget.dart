import 'package:flutter/material.dart';
import 'package:logotime/widget/common/buttons/regular_button.dart';
import 'package:logotime/widget/home/home_view_model.dart';
import 'package:logotime/widget/home/user_info_widget.dart';

class HomeWidget extends StatelessWidget {
  final HomeViewModel viewModel;

  const HomeWidget({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My account'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (viewModel.user != null)
              RefreshIndicator(
                  onRefresh: () async {
                    viewModel.onUpdatePressed();
                  },
                  child: UserInfoWidget(user: viewModel.user!)),
            RegularButton(
              onTap: viewModel.onLogOutPressed,
              text: 'Log out',
            )
          ],
        ),
      ),
    );
  }
}
