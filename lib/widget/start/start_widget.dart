import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:logotime/extensions.dart';
import 'package:logotime/widget/app_theme/app_colors.dart';
import 'package:logotime/widget/common/buttons/regular_button.dart';
import 'package:logotime/widget/start/start_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:logotime/widget/start/start_widget_assets.dart';

class StartWidget extends StatelessWidget {
  const StartWidget({super.key, required this.viewModel});

  final StartViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: AppColors.orange,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              MasonryGridView.count(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: StartWidgetAssets.imagesPaths.length + 1,
                shrinkWrap: true,
                crossAxisCount: 3,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                itemBuilder: (context, index) {
                  if (index == 5) {
                    return const SizedBox(
                      height: 150,
                      child: Icon(
                        Icons.perm_contact_calendar_rounded,
                        color: Colors.white,
                        size: 100.0,
                      ),
                    );
                  }
                  return SizedBox(
                      height: index > 3
                          ? constraints.maxHeight / 4
                          : constraints.maxHeight / 8 * (index % 2 + 1),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3,
                            color: AppColors.white,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(6.0),
                          child: Image.asset(
                            StartWidgetAssets
                                .imagesPaths[index > 5 ? index - 1 : index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ));
                },
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      RegularButton(
                        onTap: viewModel.onCreateOrganisationPressed,
                        text: localization.registerOrganisation.capitalize(),
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        buttonColor: AppColors.white,
                        textColor: AppColors.orange,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            localization.logInPrompt,
                            style: const TextStyle(
                              color: AppColors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          GestureDetector(
                            onTap: viewModel.onLogInPressed,
                            child: Text(
                              localization.logIn.capitalize(),
                              style: const TextStyle(
                                decoration: TextDecoration.underline,
                                color: AppColors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
