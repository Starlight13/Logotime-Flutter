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
  String email = '';
  String phoneNumber = '';
  String password = '';
  String firstName = '';
  String lastName = '';

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
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Column(
              children: [
                StyledTextField(
                  fieldTitle: localizations.email,
                  onChanged: (newValue) => setState((() => email = newValue)),
                  error: widget.viewModel.emailError,
                ),
                StyledTextField(
                  fieldTitle: localizations.phone,
                  onChanged: (newValue) =>
                      setState((() => phoneNumber = newValue)),
                  error: widget.viewModel.phoneNumberError,
                ),
                StyledTextField(
                  fieldTitle: localizations.password,
                  onChanged: (newValue) =>
                      setState((() => password = newValue)),
                  error: widget.viewModel.passwordError,
                ),
                StyledTextField(
                  fieldTitle: localizations.firstName,
                  onChanged: (newValue) =>
                      setState((() => firstName = newValue)),
                  error: widget.viewModel.firstNameError,
                ),
                StyledTextField(
                  fieldTitle: localizations.lastName,
                  onChanged: (newValue) =>
                      setState((() => lastName = newValue)),
                  error: widget.viewModel.lastNameError,
                ),
              ],
            )),
            RegularButton(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              onTap: () => widget.viewModel.onCreateOwnerNextStep(
                  UserModel((user) => user
                    ..email = email
                    ..phoneNumber = phoneNumber
                    ..firstName = firstName
                    ..lastName = lastName),
                  password),
              // TODO: translate
              text: localizations.nextStep.capitalize(),
            )
          ],
        ),
      ),
    );
  }
}
