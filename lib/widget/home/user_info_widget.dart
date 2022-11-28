import 'package:flutter/material.dart';
import 'package:logotime/extensions.dart';
import 'package:logotime/network/model/user/user_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:logotime/widget/common/lists/text_with_label.dart';

class UserInfoWidget extends StatelessWidget {
  final UserModel user;
  const UserInfoWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: Image.asset(
                    'assets/images/start/builder.jpeg',
                  ).image,
                  radius: 70,
                ),
                Text(
                  '${user.firstName} ${user.lastName}',
                  style: const TextStyle(
                    fontSize: 32.0,
                  ),
                ),
                Text(
                  user.userRole?.name ?? '',
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const Text(
            'Contact info',
            style: TextStyle(
              fontSize: 32.0,
            ),
            textAlign: TextAlign.left,
          ),
          TextWithLabel(
            label: localizations.email.capitalize(),
            text: user.email,
          ),
          TextWithLabel(
            label: localizations.phone.capitalize(),
            text: user.phoneNumber ?? '',
          ),
          const Text(
            'Stats',
            style: TextStyle(
              fontSize: 32.0,
            ),
            textAlign: TextAlign.left,
          ),
          TextWithLabel(
            label: 'Joined on',
            text: user.formattedCreationDate ?? '',
          ),
        ],
      ),
    );
  }
}
