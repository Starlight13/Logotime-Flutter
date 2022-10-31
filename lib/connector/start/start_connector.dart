import 'package:flutter/material.dart';
import 'package:logotime/connector/page_connector.dart';
import 'package:logotime/connector/start/start_converter.dart';
import 'package:logotime/widget/start/start_view_model.dart';
import 'package:logotime/widget/start/start_widget.dart';
import 'package:redux/src/store.dart';

class StartConnector extends PageConnector<StartViewModel, StartConverter> {
  const StartConnector({super.key});

  @override
  Widget buildWidget(BuildContext context, StartViewModel viewModel) =>
      StartWidget(viewModel: viewModel);

  @override
  StartConverter prepareConverter(BuildContext context, Store store) =>
      StartConverter(dispatch: store.dispatch);
}
