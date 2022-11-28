import 'package:flutter/material.dart';
import 'package:logotime/extensions.dart';
import 'package:logotime/widget/common/animation/loading_placeholder.dart';
import 'package:logotime/widget/common/buttons/regular_button.dart';
import 'package:logotime/widget/common/lists/text_with_label.dart';
import 'package:logotime/widget/home/home_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeWidget extends StatelessWidget {
  final HomeViewModel viewModel;

  const HomeWidget({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: const Text('My account'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RefreshIndicator(
              onRefresh: () async {
                viewModel.onUpdatePressed();
              },
              child: SingleChildScrollView(
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
                          LoadingPlaceholder(
                            isLoading: viewModel.isLoading,
                            height: 32.0,
                            child: Text(
                              '${viewModel.user?.firstName} ${viewModel.user?.lastName}',
                              style: const TextStyle(
                                fontSize: 32.0,
                              ),
                            ),
                          ),
                          LoadingPlaceholder(
                            isLoading: viewModel.isLoading,
                            height: 20.0,
                            width: 150.0,
                            child: Text(
                              viewModel.user?.userRole?.name ?? '',
                              style: const TextStyle(
                                fontSize: 20.0,
                                color: Colors.grey,
                              ),
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
                      text: LoadingPlaceholder(
                          isLoading: viewModel.isLoading,
                          child: Text(
                            viewModel.user?.email ?? '',
                            textAlign: TextAlign.right,
                          )),
                    ),
                    TextWithLabel(
                      label: localizations.phone.capitalize(),
                      text: LoadingPlaceholder(
                        isLoading: viewModel.isLoading,
                        child: Text(
                          viewModel.user?.phoneNumber ?? '',
                          textAlign: TextAlign.right,
                        ),
                      ),
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
                      text: LoadingPlaceholder(
                        isLoading: viewModel.isLoading,
                        child: Text(
                          viewModel.user?.formattedCreationDate ?? '',
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
