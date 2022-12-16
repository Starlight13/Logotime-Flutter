import 'package:logotime/redux/state/app/app_state.dart';
import 'package:redux/redux.dart';

/// Base middleware for other middleware to extend
abstract class BaseMiddleware implements MiddlewareClass<AppState> {
  /// Processes [action] and passed it to [next]
  @override
  call(Store<AppState> store, action, NextDispatcher next) {
    process(action, store.state, store.dispatch);
    next(action);
  }

  /// Processes [action]
  void process(
    dynamic action,
    AppState state,
    Function(dynamic action) dispatch,
  );
}
