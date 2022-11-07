import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:logotime/connector/view_model_converter.dart';
import 'package:logotime/redux/state/app/app_state.dart';
import 'package:redux/redux.dart';

abstract class PageConnector<V, B extends ViewModelConverter<V>>
    extends StatelessWidget {
  const PageConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, V>(
      onInit: (store) {
        onInit(context, store);
      },
      onDispose: (store) {
        onDispose(context, store);
      },
      distinct: true,
      converter: (store) {
        final converter =
            prepareConverter(context, store.state, store.dispatch);
        return converter.build();
      },
      builder: buildWidget,
    );
  }

  B prepareConverter(
      BuildContext context, AppState state, Function(dynamic) dispatch);

  Widget buildWidget(BuildContext context, V viewModel);

  void onInit(BuildContext context, Store store) {}

  void onDispose(BuildContext context, Store store) {}
}
