abstract class OperationResultAction {
  final String message;

  OperationResultAction({required this.message});
}

class OperationSuccessAction extends OperationResultAction {
  OperationSuccessAction({required super.message});
}

class OperationFailureAction extends OperationResultAction {
  final int? statusCode;
  OperationFailureAction({required super.message, required this.statusCode});
}
