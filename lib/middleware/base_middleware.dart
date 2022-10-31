import 'package:logotime/redux/state/app/app_state.dart';
import 'package:redux/redux.dart';

abstract class BaseMiddleware implements MiddlewareClass<AppState> {
  @override
  call(Store<AppState> store, action, NextDispatcher next) {
    process(action, store.state, store.dispatch);
    next(action);
  }

  void process(
    dynamic action,
    AppState state,
    Function(dynamic action) dispatch,
  );
}
