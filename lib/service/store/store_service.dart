import 'package:logotime/redux/state/app/app_state.dart';
import 'package:redux/redux.dart';

abstract class IStoreService {
  Store<AppState> get store;
  Function(dynamic) get dispatch;
  AppState get state;
}

class StoreService implements IStoreService {
  final Store<AppState> _store;

  const StoreService({required Store<AppState> store}) : _store = store;

  @override
  Function(dynamic p1) get dispatch => store.dispatch;

  @override
  AppState get state => _store.state;

  @override
  Store<AppState> get store => _store;
}
