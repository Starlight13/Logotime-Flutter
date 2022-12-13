import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:logotime/extensions.dart';
import 'package:logotime/widget/app_theme/app_colors.dart';
import 'package:logotime/widget/authorization/authorization_view_model.dart';
import 'package:logotime/widget/common/animation/loading_overlay.dart';
import 'package:logotime/widget/common/buttons/regular_button.dart';
import 'package:logotime/widget/common/forms/styled_text_field.dart';

class AuthorizationWidget extends StatefulWidget {
  final AuthorizationViewModel viewModel;

  const AuthorizationWidget({super.key, required this.viewModel});

  @override
  State<AuthorizationWidget> createState() => _AuthorizationWidgetState();
}

class _AuthorizationWidgetState extends State<AuthorizationWidget> {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    return Scaffold(
      body: LoadingOverlay(
        isLoading: widget.viewModel.isLoading,
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.perm_contact_calendar_rounded,
                      size: 150.0,
                      color: Colors.brown,
                    ),
                    StyledTextField(
                      fieldTitle: localization.email.capitalize(),
                      controller: emailController,
                      error: widget.viewModel.emailError,
                    ),
                    StyledTextField(
                      fieldTitle: localization.password.capitalize(),
                      controller: passwordController,
                      error: widget.viewModel.passwordError,
                    ),
                    RegularButton(
                      onTap: () => widget.viewModel.onLogInPressed(
                        email: emailController.text,
                        password: passwordController.text,
                      ),
                      text: localization.logIn.capitalize(),
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    RegularButton(
                      onTap: widget.viewModel.onBackPressed,
                      text: localization.back.capitalize(),
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      buttonColor: AppColors.lightOrange,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
