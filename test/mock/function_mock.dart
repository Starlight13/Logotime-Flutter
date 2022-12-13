import 'package:mockito/mockito.dart';

class FunctionMock extends Mock {
  void call();
}

class OneParameterFunctionMock<T> extends Mock {
  void call(T? param);
}
