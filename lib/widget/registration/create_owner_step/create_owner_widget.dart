import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:logotime/extensions.dart';
import 'package:logotime/network/model/user/user_model.dart';
import 'package:logotime/widget/common/buttons/regular_button.dart';
import 'package:logotime/widget/common/forms/styled_text_field.dart';
import 'package:logotime/widget/registration/create_owner_step/create_owner_view_model.dart';

class CreateOwnerWidget extends StatefulWidget {
  final CreateOwnerViewModel viewModel;
  const CreateOwnerWidget({
    super.key,
    required this.viewModel,
  });

  @override
  State<CreateOwnerWidget> createState() => _CreateOwnerWidgetState();
}

class _CreateOwnerWidgetState extends State<CreateOwnerWidget> {
  late TextEditingController emailController;
  late TextEditingController phoneNumberController;
  late TextEditingController passwordController;
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    phoneNumberController = TextEditingController();
    passwordController = TextEditingController();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.ownerInfo.capitalize()),
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            size: 40.0,
          ),
          onPressed: widget.viewModel.onBackButtonPress,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: StyledTextField(
                    fieldTitle: localizations.email,
                    error: widget.viewModel.emailError,
                    controller: emailController,
                  ),
                ),
                StyledTextField(
                  fieldTitle: localizations.phone,
                  error: widget.viewModel.phoneNumberError,
                  controller: phoneNumberController,
                  hint: '+380XXXXXXXXX',
                ),
                StyledTextField(
                  fieldTitle: localizations.password,
                  error: widget.viewModel.passwordError,
                  controller: passwordController,
                ),
                StyledTextField(
                  fieldTitle: localizations.firstName,
                  error: widget.viewModel.firstNameError,
                  controller: firstNameController,
                ),
                StyledTextField(
                  fieldTitle: localizations.lastName,
                  error: widget.viewModel.lastNameError,
                  controller: lastNameController,
                ),
                RegularButton(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  onTap: () => widget.viewModel.onCreateOwnerNextStep(
                    UserModel((user) => user
                      ..email = emailController.text
                      ..phoneNumber = phoneNumberController.text
                      ..firstName = firstNameController.text
                      ..lastName = lastNameController.text
                      ..password = passwordController.text),
                  ),
                  text: localizations.nextStep.capitalize(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    super.dispose();
  }
}
