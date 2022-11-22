import 'package:mockito/mockito.dart';

abstract class NextDispatcher {
  dynamic call(dynamic action) {}
}

class NextDispatcherMock extends Mock implements NextDispatcher {}
