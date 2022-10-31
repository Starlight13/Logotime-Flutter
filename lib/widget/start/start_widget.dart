import 'package:flutter/material.dart';
import 'package:logotime/widget/app_theme/app_colors.dart';
import 'package:logotime/widget/common/buttons/regular_button.dart';
import 'package:logotime/widget/start/start_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class StartWidget extends StatelessWidget {
  const StartWidget({super.key, required this.viewModel});

  final StartViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Flexible(
              flex: 2,
              child: Center(
                child: Icon(
                  Icons.perm_contact_calendar_rounded,
                  size: 150.0,
                  color: Colors.brown,
                ),
              ),
            ),
            RegularButton(
              onTap: viewModel.onLogInPressed,
              text: localization.logIn,
              padding: const EdgeInsets.symmetric(vertical: 20.0),
            ),
            const SizedBox(
              height: 20.0,
            ),
            RegularButton(
              onTap: viewModel.onCreateOrganisationPressed,
              text: localization.createOrganisation,
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              buttonColor: AppColors.lightOrange,
            ),
          ],
        ),
      )),
    );
  }
}
