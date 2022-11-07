abstract class OperationResultAction {
  final String message;

  OperationResultAction({required this.message});
}

class OperationSuccessAction extends OperationResultAction {
  OperationSuccessAction({required super.message});
}

class OperationFailureAction extends OperationResultAction {
  OperationFailureAction({required super.message});
}
