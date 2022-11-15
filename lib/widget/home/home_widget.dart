import 'package:flutter/material.dart';
import 'package:logotime/widget/common/buttons/regular_button.dart';
import 'package:logotime/widget/home/home_view_model.dart';

class HomeWidget extends StatelessWidget {
  final HomeViewModel viewModel;

  const HomeWidget({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            RegularButton(
              onTap: viewModel.onLogOutPressed,
              text: 'Log out',
            ),
            Text(viewModel.user?.toString() ?? ''),
            RegularButton(
              onTap: viewModel.onUpdatePressed,
              text: 'Update',
            ),
          ],
        ),
      ),
    );
  }
}
